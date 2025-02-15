#tag Class
Class CFStream
Inherits CFType
	#tag Method, Flags = &h0
		Sub Close()
		  // needs to be overwritten
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub Constructor()
		  // Made private on purpose so that one cannot instantiate this class - use its subclasses instead!
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Destructor()
		  me.Close()
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetProperty(name as String) As CFType
		  // needs to be overwritten
		  
		  #pragma unused name
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function HadError() As Boolean
		  return GetStatus() = kStatusError 'TODO: not yet verified whether this is the proper way, maybe call CFReadStreamCopyError/CFReadStreamGetError instead
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function IsAtEnd() As Boolean
		  // Returns true if there is no more data to read or if the output buffer is full
		  
		  return GetStatus() >= kStatusAtEnd
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function IsOpen() As Boolean
		  dim st as Integer = GetStatus()
		  return st >= kStatusOpen and st <= kStatusAtEnd
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function kPropertyAppendToFile() As CFStringRef
		  static s as CFStringRef = CFConstant("kCFStreamPropertyAppendToFile")
		  return s
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function kPropertyDataWritten() As CFStringRef
		  static s as CFStringRef = CFConstant("kCFStreamPropertyDataWritten")
		  return s
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function kPropertyFileCurrentOffset() As CFStringRef
		  static s as CFStringRef = CFConstant("kCFStreamPropertyFileCurrentOffset")
		  return s
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function kPropertySocketNativeHandle() As CFStringRef
		  static s as CFStringRef = CFConstant("kCFStreamPropertySocketNativeHandle")
		  return s
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function kPropertySocketRemoteHostName() As CFStringRef
		  static s as CFStringRef = CFConstant("kCFStreamPropertySocketRemoteHostName")
		  return s
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function kPropertySocketRemotePortNumber() As CFStringRef
		  static s as CFStringRef = CFConstant("kCFStreamPropertySocketRemotePortNumber")
		  return s
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Function NewBoundPair(ByRef reader as CFReadStream, ByRef writer as CFWriteStream, transferBufferSize as Integer = 8192) As Boolean
		  // Note: This function is available only since OS X 10.5 (Leopard)
		  
		  // ... and it crashes under 10.5.6, hence it's currently unusable
		  
		  '#if TargetMacOS
		  'soft declare sub CFStreamCreateBoundPair lib CarbonLib (allocator as Ptr, ByRef read as Ptr, ByRef write as Ptr, bufSize as Integer)
		  'try
		  'dim rd, wr as Ptr
		  'CFStreamCreateBoundPair (nil, rd, wr, transferBufferSize)
		  'writer = new CFWriteStream (wr, true)
		  'reader = new CFReadStream (rd, true)
		  'return true
		  'catch FunctionNotFoundException
		  '// function requires 10.5 or later
		  'return false
		  'end try
		  '#endif
		  
		  #pragma unused reader
		  #pragma unused writer
		  #pragma unused transferBufferSize
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Sub NewBoundPairFromHostAddress(address as String, port as Integer, ByRef reader as CFReadStream, ByRef writer as CFWriteStream)
		  #if TargetMacOS
		    declare sub CFStreamCreatePairWithSocketToHost lib CarbonLib (allocator as Ptr, host as CFStringRef, port as Integer, ByRef read as Ptr, ByRef write as Ptr)
		    
		    dim rd, wr as Ptr
		    CFStreamCreatePairWithSocketToHost (nil, address.ConvertEncoding(Encodings.UTF8), port, rd, wr)
		    
		    reader = new CFReadStream (rd, true)
		    writer = new CFWriteStream (wr, true)
		  #endif
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Sub NewBoundPairFromNativeSocket(socketHandle as CFSocketNativeHandle, ByRef reader as CFReadStream, ByRef writer as CFWriteStream)
		  #if TargetMacOS
		    declare sub CFStreamCreatePairWithSocket lib CarbonLib (allocator as Ptr, sock as CFSocketNativeHandle, ByRef read as Ptr, ByRef write as Ptr)
		    
		    dim rd, wr as Ptr
		    CFStreamCreatePairWithSocket (nil, socketHandle, rd, wr)
		    
		    reader = new CFReadStream (rd, true)
		    writer = new CFWriteStream (wr, true)
		  #endif
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Sub NewBoundPairFromSocket(signature as CFSocketSignature, ByRef reader as CFReadStream, ByRef writer as CFWriteStream)
		  #if TargetMacOS
		    declare sub CFStreamCreatePairWithPeerSocketSignature lib CarbonLib (allocator as Ptr, signature as Ptr, ByRef read as Ptr, ByRef write as Ptr)
		    
		    dim rd, wr as Ptr
		    CFStreamCreatePairWithPeerSocketSignature (nil, signature.Reference, rd, wr)
		    
		    reader = new CFReadStream (rd, true)
		    writer = new CFWriteStream (wr, true)
		  #endif
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Open() As Boolean
		  // needs to be overwritten
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function SetProperty(name as String, value as CFType) As Boolean
		  // needs to be overwritten
		  
		  #pragma unused name
		  #pragma unused value
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Status() As Integer
		  return GetStatus()
		End Function
	#tag EndMethod


	#tag Hook, Flags = &h0
		Event GetStatus() As Integer
	#tag EndHook


	#tag Property, Flags = &h1
		Protected mData As MemoryBlock
	#tag EndProperty


	#tag Constant, Name = kStatusAtEnd, Type = Double, Dynamic = False, Default = \"5", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kStatusClosed, Type = Double, Dynamic = False, Default = \"6", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kStatusError, Type = Double, Dynamic = False, Default = \"7", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kStatusNotOpen, Type = Double, Dynamic = False, Default = \"0", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kStatusOpen, Type = Double, Dynamic = False, Default = \"2", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kStatusOpening, Type = Double, Dynamic = False, Default = \"1", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kStatusReading, Type = Double, Dynamic = False, Default = \"3", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kStatusWriting, Type = Double, Dynamic = False, Default = \"4", Scope = Public
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
			Name="Name"
			Visible=true
			Group="ID"
			InitialValue=""
			Type="String"
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
