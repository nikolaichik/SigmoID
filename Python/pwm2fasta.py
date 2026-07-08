#!/usr/bin/env python3
"""
Sample nucleotide sequences from a PWM motif in MEME format and output in FASTA format.

This script generates random sequences based on a Position Weight Matrix (PWM)
from a MEME format file, where each position's nucleotides are sampled according
to the probabilities defined in the PWM.
"""

import argparse
import random
import sys
import re
from typing import List, Dict, Optional, Tuple

# Nucleotide order (standard MEME format)
NUCLEOTIDES = ['A', 'C', 'G', 'T']


def parse_meme_pwm(meme_file: str) -> List[Tuple[str, List[Dict[str, float]]]]:
    """
    Parse MEME format file and extract all PWMs.
    
    MEME format example:
    
    MOTIF M1   DNA   width=8  sites=10  nsites=10  E-value=1.2e-4
    letter-probability matrix: alength=4  w=8  E=1.2e-4
     0.200000	0.300000	0.300000	0.200000
     0.250000	0.250000	0.250000	0.250000
     0.100000	0.100000	0.700000	0.100000
     0.300000	0.200000	0.200000	0.300000
     0.250000	0.250000	0.250000	0.250000
     0.150000	0.350000	0.350000	0.150000
     0.200000	0.400000	0.200000	0.200000
     0.250000	0.250000	0.250000	0.250000
    """
    motifs = []
    
    try:
        with open(meme_file, 'r') as f:
            content = f.read()
        
        # Split into sections for each MOTIF
        motif_pattern = r'MOTIF\s+(\S+).*?\nletter-probability matrix:.*?\n((?:[0-9.\t\s]+\n)+)'
        matches = re.findall(motif_pattern, content, re.MULTILINE | re.DOTALL)
        
        if not matches:
            raise ValueError(f"No MEME format motifs found in '{meme_file}'")
        
        for motif_name, matrix_text in matches:
            pwm = []
            lines = matrix_text.strip().split('\n')
            
            for line_num, line in enumerate(lines, start=1):
                # Split by whitespace (tabs or spaces)
                parts = line.strip().split()
                
                if len(parts) != 4:
                    print(f"Warning: Line {line_num} in motif '{motif_name}' has {len(parts)} values, expected 4", 
                          file=sys.stderr)
                    continue
                
                position_probs = {}
                total = 0.0
                
                for i, nuc in enumerate(NUCLEOTIDES):
                    try:
                        prob = float(parts[i])
                        position_probs[nuc] = prob
                        total += prob
                    except ValueError:
                        raise ValueError(f"Invalid number '{parts[i]}' in motif '{motif_name}', line {line_num}")
                
                # Normalize if probabilities don't sum to 1.0 (allow small rounding errors)
                if abs(total - 1.0) > 0.01:
                    print(f"Warning: Motif '{motif_name}' position {line_num} probabilities sum to {total}, normalizing", 
                          file=sys.stderr)
                    for nuc in position_probs:
                        position_probs[nuc] /= total
                
                pwm.append(position_probs)
            
            if pwm:
                motifs.append((motif_name, pwm))
                print(f"Loaded motif '{motif_name}' with {len(pwm)} positions", file=sys.stderr)
    
    except FileNotFoundError:
        raise FileNotFoundError(f"MEME file '{meme_file}' not found")
    except Exception as e:
        raise Exception(f"Error parsing MEME file: {e}")
    
    if not motifs:
        raise ValueError(f"No valid PWM motifs found in '{meme_file}'")
    
    return motifs


def parse_simple_meme_pwm(meme_file: str) -> List[Dict[str, float]]:
    """
    Parse a single PWM from a simplified MEME format file.
    
    Simplified format (just the matrix lines, no headers):
        0.200000	0.300000	0.300000	0.200000
        0.250000	0.250000	0.250000	0.250000
        0.100000	0.100000	0.700000	0.100000
    """
    pwm = []
    
    try:
        with open(meme_file, 'r') as f:
            lines = [line.strip() for line in f if line.strip() and not line.startswith('#')]
        
        # Check if it's a full MEME format or just the matrix
        if any(line.startswith('MOTIF') for line in lines):
            # Full MEME format, use the full parser
            motifs = parse_meme_pwm(meme_file)
            if motifs:
                return motifs[0][1]  # Return first motif's PWM
            else:
                raise ValueError("No motifs found")
        
        # Otherwise, treat as simple matrix
        for line_num, line in enumerate(lines, start=1):
            parts = line.split()
            
            if len(parts) != 4:
                raise ValueError(f"Line {line_num}: Expected 4 values, got {len(parts)}")
            
            position_probs = {}
            total = 0.0
            
            for i, nuc in enumerate(NUCLEOTIDES):
                try:
                    prob = float(parts[i])
                    position_probs[nuc] = prob
                    total += prob
                except ValueError:
                    raise ValueError(f"Line {line_num}: Invalid number '{parts[i]}'")
            
            # Normalize if needed
            if abs(total - 1.0) > 0.01:
                print(f"Warning: Position {line_num} probabilities sum to {total}, normalizing", 
                      file=sys.stderr)
                for nuc in position_probs:
                    position_probs[nuc] /= total
            
            pwm.append(position_probs)
    
    except FileNotFoundError:
        raise FileNotFoundError(f"MEME file '{meme_file}' not found")
    
    if not pwm:
        raise ValueError(f"No valid PWM data found in '{meme_file}'")
    
    return pwm


def sample_sequence_from_pwm(pwm: List[Dict[str, float]]) -> str:
    """
    Generate a random sequence by sampling from the PWM at each position.
    """
    sequence = []
    
    for position_probs in pwm:
        # Get nucleotides and their probabilities
        nucleotides = list(position_probs.keys())
        probabilities = [position_probs[nuc] for nuc in nucleotides]
        
        # Sample one nucleotide based on probabilities
        sampled_nuc = random.choices(nucleotides, weights=probabilities, k=1)[0]
        sequence.append(sampled_nuc)
    
    return ''.join(sequence)


def generate_sequences(pwm: List[Dict[str, float]], num_seqs: int) -> List[str]:
    """
    Generate multiple sequences from the PWM.
    """
    sequences = []
    for i in range(num_seqs):
        seq = sample_sequence_from_pwm(pwm)
        sequences.append(seq)
    return sequences


def write_fasta(sequences: List[str], output_file: str, motif_name: str = "sampled_motif") -> None:
    """
    Write sequences to a FASTA file.
    """
    with open(output_file, 'w') as f:
        for i, seq in enumerate(sequences, start=1):
            header = f">{motif_name}_seq_{i}"
            f.write(f"{header}\n")
            
            # Format sequence with line wrapping (80 characters per line)
            for j in range(0, len(seq), 80):
                f.write(f"{seq[j:j+80]}\n")


def list_motifs(meme_file: str) -> List[str]:
    """
    List all motif names in a MEME file.
    """
    motifs = []
    try:
        with open(meme_file, 'r') as f:
            for line in f:
                match = re.match(r'MOTIF\s+(\S+)', line)
                if match:
                    motifs.append(match.group(1))
    except FileNotFoundError:
        raise FileNotFoundError(f"MEME file '{meme_file}' not found")
    
    return motifs


def main():
    parser = argparse.ArgumentParser(
        description='Sample nucleotide sequences from a PWM motif in MEME format',
        formatter_class=argparse.RawDescriptionHelpFormatter,
        epilog="""
MEME format example:
    
    MOTIF M1   DNA   width=8  sites=10  nsites=10  E-value=1.2e-4
    letter-probability matrix: alength=4  w=8  E=1.2e-4
     0.200000	0.300000	0.300000	0.200000
     0.250000	0.250000	0.250000	0.250000
     0.100000	0.100000	0.700000	0.100000
     0.300000	0.200000	0.200000	0.300000
     0.250000	0.250000	0.250000	0.250000
     0.150000	0.350000	0.350000	0.150000
     0.200000	0.400000	0.200000	0.200000
     0.250000	0.250000	0.250000	0.250000

Or simplified format (just the matrix, columns in order A, C, G, T):
    0.2	0.3	0.3	0.2
    0.25	0.25	0.25	0.25
    0.1	0.1	0.7	0.1
        """
    )
    
    parser.add_argument(
        '-numSeqs', '--num-sequences',
        type=int,
        required=True,
        help='Number of sequences to generate'
    )
    
    parser.add_argument(
        '-in', '--input',
        type=str,
        required=True,
        help='Input MEME format PWM file name'
    )
    
    parser.add_argument(
        '-out', '--output',
        type=str,
        required=True,
        help='Output FASTA file name'
    )
    
    parser.add_argument(
        '-motif', '--motif-name',
        type=str,
        default=None,
        help='Name of specific motif to use (if multiple motifs in file)'
    )
    
    parser.add_argument(
        '-prefix', '--sequence-prefix',
        type=str,
        default='sampled_motif',
        help='Prefix for FASTA headers (default: sampled_motif)'
    )
    
    parser.add_argument(
        '-seed', '--random-seed',
        type=int,
        default=None,
        help='Random seed for reproducibility'
    )
    
    parser.add_argument(
        '-list-motifs', '--list-motifs',
        action='store_true',
        help='List all motif names in the input file and exit'
    )
    
    args = parser.parse_args()
    
    # List motifs if requested
    if args.list_motifs:
        try:
            motifs = list_motifs(args.input)
            if motifs:
                print("Motifs found in file:")
                for m in motifs:
                    print(f"  {m}")
            else:
                print("No motifs found in file (or not in MEME format)")
            sys.exit(0)
        except Exception as e:
            print(f"Error: {e}", file=sys.stderr)
            sys.exit(1)
    
    # Validate number of sequences
    if args.num_sequences <= 0:
        print(f"Error: Number of sequences must be positive (got {args.num_sequences})", 
              file=sys.stderr)
        sys.exit(1)
    
    # Set random seed if provided
    if args.random_seed is not None:
        random.seed(args.random_seed)
    
    try:
        # Parse MEME file
        print(f"Reading PWM from {args.input}...", file=sys.stderr)
        
        # Try to parse as full MEME format first
        all_motifs = parse_meme_pwm(args.input)
        
        # Select specific motif if requested
        if args.motif_name:
            matching_motifs = [(name, pwm) for name, pwm in all_motifs if name == args.motif_name]
            if not matching_motifs:
                available = [name for name, _ in all_motifs]
                print(f"Error: Motif '{args.motif_name}' not found. Available motifs: {available}", 
                      file=sys.stderr)
                sys.exit(1)
            motif_name, pwm = matching_motifs[0]
        else:
            # Use first motif if multiple present
            if len(all_motifs) > 1:
                print(f"Warning: Multiple motifs found. Using first motif: '{all_motifs[0][0]}'", 
                      file=sys.stderr)
                print("Use -motif option to specify a different motif", file=sys.stderr)
            motif_name, pwm = all_motifs[0]
        
        print(f"Using motif '{motif_name}' with {len(pwm)} positions", file=sys.stderr)
        
        # Generate sequences
        print(f"Generating {args.num_sequences} sequences...", file=sys.stderr)
        sequences = generate_sequences(pwm, args.num_sequences)
        
        # Write output
        print(f"Writing sequences to {args.output}...", file=sys.stderr)
        write_fasta(sequences, args.output, args.sequence_prefix)
        
        print(f"Done! Generated {len(sequences)} sequences of length {len(pwm)}", 
              file=sys.stderr)
        
    except Exception as e:
        print(f"Error: {e}", file=sys.stderr)
        sys.exit(1)


if __name__ == "__main__":
    main()