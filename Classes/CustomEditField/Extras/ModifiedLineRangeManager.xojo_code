#tag Class
Protected Class ModifiedLineRangeManager
	#tag Method, Flags = &h0
		Function AddRange(range as ModifiedLineRange) As ModifiedLineRange
		  if Range.length = 0 then Return nil
		  
		  dim tmpRange as ModifiedLineRange
		  dim overlapResult as Integer
		  
		  for i as Integer = 0 to ranges.Ubound
		    tmpRange = Ranges(i)
		    overlapResult = tmpRange.OverlapsRange(range)
		    
		    if overlapResult <> CharSelection.OVERLAP_NONE then
		      dim newOffset as Integer
		      dim newLength as Integer
		      
		      //merge ranges
		      newOffset = min(tmpRange.offset, Range.offset)
		      newLength = max(tmpRange.offset + tmpRange.length, Range.offset + Range.length) - newOffset
		      
		      Range.offset = newOffset
		      Range.length = newLength
		      
		      Ranges.Remove(i)
		      i = i - 1
		    end if
		  next
		  
		  ranges.Append(Range)
		  Return Range
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Clear()
		  ReDim Ranges(-1)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function containsLine(lineIndex as Integer) As Boolean
		  for each tmp as ModifiedLineRange in ranges
		    if tmp.inRange(lineIndex) then Return true
		  next
		  Return false
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function NextRange() As ModifiedLineRange
		  Return Ranges.Pop
		End Function
	#tag EndMethod


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return ranges.Ubound + 1
			End Get
		#tag EndGetter
		RangeCount As Integer
	#tag EndComputedProperty

	#tag Property, Flags = &h21
		Private Ranges() As ModifiedLineRange
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="RangeCount"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass