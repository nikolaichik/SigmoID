#tag Class
Class CFSocketSignature
	#tag Method, Flags = &h0
		Sub Constructor()
		  'dim ssig as new CFSocketSignature (CFSocket.PF_INET, 0, 0, nil)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(protocolFamily as Integer, socketType as Integer, protocol as Integer, address as CFData)
		  mData = new MemoryBlock (16)
		  mData.Int32Value(0) = protocolFamily
		  mData.Int32Value(4) = socketType
		  mData.Int32Value(8) = protocol
		  if not (address is nil) then
		    mData.Ptr(12) = address.Reference
		  end
		  mAddress = address // need to retain the address as long as it's stored in the MemoryBlock!
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(signatureRef as Ptr)
		  dim src as MemoryBlock = signatureRef
		  mData = new MemoryBlock (16)
		  mData.StringValue (0,16) = src.StringValue (0,16)
		  mAddress = new CFData (mData.Ptr(12), false)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(unixPath as String)
		  me.Constructor (CFSocket.PF_UNIX, 0, 0, CFSocket.UnixDomainAddress(unixPath))
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Reference() As Ptr
		  return mData
		End Function
	#tag EndMethod


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  if mAddress <> nil then
			    return mAddress
			  else
			    return new CFData (mData.Ptr(12), false)
			  end if
			End Get
		#tag EndGetter
		address As CFData
	#tag EndComputedProperty

	#tag Property, Flags = &h21
		Private mAddress As CFData
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mData As MemoryBlock
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return mData.Int32Value(8)
			End Get
		#tag EndGetter
		protocol As Integer
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return mData.Int32Value(0)
			End Get
		#tag EndGetter
		protocolFamily As Integer
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return mData.Int32Value(4)
			End Get
		#tag EndGetter
		socketType As Integer
	#tag EndComputedProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="2147483648"
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
			Name="Name"
			Visible=true
			Group="ID"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="protocol"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="protocolFamily"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="socketType"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType=""
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
