#tag Class
Class CFString
Inherits CFType
Implements CFPropertyList
	#tag Event
		Function ClassID() As UInteger
		  return me.ClassID
		End Function
	#tag EndEvent

	#tag Event
		Function VariantValue() As Variant
		  return me.StringValue
		End Function
	#tag EndEvent


	#tag Method, Flags = &h0
		Shared Function ClassID() As UInteger
		  #if targetMacOS
		    declare function TypeID lib CarbonLib alias "CFStringGetTypeID" () as UInteger
		    static id as UInteger = TypeID
		    return id
		  #endif
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Constructor(s as String)
		  #if targetMacOS
		    declare function CFStringCreateWithCString lib CarbonLib (alloc as Ptr, cStr as CString, encoding as Integer) as Ptr
		    
		    dim p as Ptr
		    if Encoding(s) <> nil then
		      p = CFStringCreateWithCString(nil, s, Encoding(s).code)
		    else
		      // Missing encoding!
		      break
		      // Fall back to a safe encoding, e.g. any 8 Bit encoding, but not UTF-8 because that's may not be valid with all byte combinations!
		      const kCFStringEncodingISOLatin1 = &h0201
		      p = CFStringCreateWithCString(nil, s, kCFStringEncodingISOLatin1)
		    end if
		    
		    self.Constructor(p, hasOwnership)
		  #endif
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function CreateArrayWithFindResults(substring as CFStringRef, options as integer = 0, optional range as CFRange) As CFArray
		  #if TargetMacOS
		    soft declare function CFStringCreateArrayWithFindResults lib CarbonLib (alloc as Ptr, theString as Ptr, stringToFind as CFStringRef, range as CFRange, options as integer) as Ptr
		    
		    dim searchRange as CFRange
		    dim result as Ptr
		    
		    if range.location=0 AND range.length=0 then //Use full range if none specified
		      searchRange = CFRangeMake( 0, me.Length )
		    else
		      searchRange = range
		    end if
		    
		    result = CFStringCreateArrayWithFindResults( nil, me.Reference, substring, searchRange, options )
		    
		    if result<>nil then
		      return   new CFArray( result, true )
		    else
		      return   nil
		    end if
		    
		  #endif
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function CreateFromPListFile(file as FolderItem) As CFString
		  #if TargetMacOS
		    
		    dim plist as CFPropertyList = CFType.CreateFromPListFile( file, CoreFoundation.kCFPropertyListImmutable )
		    dim r as CFString = CFString( plist )
		    return r
		    
		  #else
		    
		    #pragma unused file
		    
		  #endif
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function CreateFromPListString(plistString as String) As CFString
		  #if TargetMacOS
		    
		    dim plist as CFPropertyList = CFType.CreateFromPListString( plistString, CoreFoundation.kCFPropertyListImmutable )
		    dim r as CFString = CFString( plist )
		    return r
		    
		  #else
		    
		    #pragma unused plistString
		    
		  #endif
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Operator_Compare(stringToCompare As CFString) As Integer
		  // Added by Kem Tekinay.
		  
		  #if TargetMacOS
		    
		    if me.Reference = nil or stringToCompare is nil or stringToCompare.Reference = nil then
		      return super.Operator_Compare( stringToCompare )
		      
		    else
		      // Introduced in MacOS X 10.0.
		      Declare Function CFStringCompare Lib CarbonLib ( theString1 As Ptr, theString2 As Ptr, compareOptions As Int32 ) As Int32
		      
		      // Use case-insensitive to emulate default behavior in RB
		      return CFStringCompare( me.Reference, stringToCompare.Reference, kCFCompareCaseInsensitive )
		    end if
		    
		  #else
		    #pragma unused stringToCompare
		  #endif
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Operator_Compare(stringToCompare As String) As Integer
		  // Added by Kem Tekinay.
		  
		  #if TargetMacOS
		    
		    if me.Reference = nil then
		      if stringToCompare = "" then
		        return 0
		      else
		        return -1
		      end if
		      
		    else
		      // Introduced in MacOS X 10.0.
		      Declare Function CFStringCompare Lib CarbonLib ( theString1 As Ptr, theString2 As CFStringRef, compareOptions As Int32 ) As Int32
		      
		      // Use case-insensitive to emulate default behavior in RB
		      return CFStringCompare( me.Reference, stringToCompare, kCFCompareCaseInsensitive )
		    end if
		    
		  #else
		    #pragma unused stringToCompare
		  #endif
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Operator_Convert() As String
		  return self.StringValue
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Operator_Convert(s as String)
		  self.Constructor(s)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function StringCompareWithOptions(stringToCompare as CFStringRef, options as integer = 0) As integer
		  #if TargetMacOS
		    
		    // Introduced in MacOS X 10.0.
		    declare function CFStringCompareWithOptions lib CarbonLib (string1 as Ptr, string2 as CFStringRef, range as CFRange, options as integer) as integer
		    
		    return  CFStringCompareWithOptions( me.Reference, stringToCompare, CFRangeMake( 0, me.Length ), options )
		    
		  #else
		    #pragma unused stringToCompare
		    #pragma unused options
		  #endif
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function StringFindWithOptions(substring as CFStringRef, options as integer = 0, optional range as CFRange) As CFRange
		  #if TargetMacOS
		    soft declare function CFStringFindWithOptions lib CarbonLib (theString as Ptr, stringToFind as CFStringRef, rangeToSearch as CFRange, searchOptions as integer, byref result as CFRange) as Boolean
		    
		    dim searchRange as CFRange
		    dim result as CFRange
		    dim found as Boolean
		    
		    if range.location=0 AND range.length=0 then //Use full range if none specified
		      searchRange = CFRangeMake( 0, me.Length )
		    else
		      searchRange = range
		    end if
		    
		    found = CFStringFindWithOptions( me.Reference, substring, searchRange, options, result )
		    
		    if found then
		      return   result
		    else
		      result.location = 0
		      result.length = 0
		      return  result
		    end if
		    
		  #endif
		  
		End Function
	#tag EndMethod


	#tag Note, Name = Note
		This is an alternative to CFStringRef.
	#tag EndNote


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if TargetMacOS
			    
			    // Introduced in MacOS X 10.0.
			    declare function CFStringGetLength lib CarbonLib (theString as Ptr) as integer
			    
			    return  CFStringGetLength( me.Reference )
			    
			  #endif
			End Get
		#tag EndGetter
		Length As Integer
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if targetMacOS
			    if self.Reference = nil then
			      return ""
			    end if
			    
			    // Introduced in MacOS X 10.0.
			    declare function CFStringGetLength lib CarbonLib (theString as Ptr) as Integer
			    declare function CFStringGetMaximumSizeForEncoding lib CarbonLib (length as Integer, enc as Integer) as Integer
			    declare function CFStringGetCString lib CarbonLib (theString as Ptr, buffer as Ptr, bufferSize as Integer, enc as Integer) as Boolean
			    
			    dim stringLength as Integer = CFStringGetLength(self)
			    if stringLength = 0 then
			      return ""
			    end if
			    dim maxSize as Integer = CFStringGetMaximumSizeForEncoding(stringLength, kCFStringEncodingUTF8)
			    if maxSize < 0 then
			      return ""
			    end if
			    
			    dim buffer as new MemoryBlock(1 + maxSize)
			    if CFStringGetCString(self, buffer, buffer.Size, kCFStringEncodingUTF8) then
			      return DefineEncoding(buffer.CString(0), Encodings.UTF8)
			    else
			      return ""
			    end if
			  #endif
			End Get
		#tag EndGetter
		StringValue As String
	#tag EndComputedProperty


	#tag Constant, Name = kCFStringEncodingUTF8, Type = Double, Dynamic = False, Default = \"&h08000100", Scope = Private
	#tag EndConstant


	#tag ViewBehavior
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Length"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="StringValue"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
