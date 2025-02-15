#tag Class
Class CFReadStream
Inherits CFStream
	#tag Event
		Function ClassID() As UInteger
		  return me.ClassID
		End Function
	#tag EndEvent

	#tag Event
		Function GetStatus() As Integer
		  #if TargetMacOS
		    declare function CFReadStreamGetStatus lib CarbonLib (stream as Ptr) as Integer
		    
		    return CFReadStreamGetStatus (me.Reference)
		  #endif
		End Function
	#tag EndEvent


	#tag Method, Flags = &h0
		Shared Function ClassID() As UInteger
		  #if TargetMacOS
		    declare function TypeID lib CarbonLib alias "CFReadStreamGetTypeID" () as UInteger
		    static id as UInteger = TypeID
		    return id
		  #endif
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Close()
		  #if TargetMacOS
		    declare sub CFReadStreamClose lib CarbonLib (stream as Ptr)
		    
		    if not ( self = nil ) then
		      CFReadStreamClose (me.Reference)
		    end if
		  #endif
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(socketHandle as CFSocketNativeHandle)
		  #if TargetMacOS
		    declare sub CFStreamCreatePairWithSocket lib CarbonLib (allocator as Ptr, sock as CFSocketNativeHandle, ByRef read as Ptr, null as Ptr)
		    
		    dim p as Ptr
		    CFStreamCreatePairWithSocket (nil, socketHandle, p, nil)
		    super.Constructor (p, true)
		  #endif
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(fileURL as CFURL)
		  #if TargetMacOS
		    declare function CFReadStreamCreateWithFile lib CarbonLib (allocator as Ptr, url as Ptr) as Ptr
		    
		    super.Constructor CFReadStreamCreateWithFile (nil, fileURL.Reference), true
		  #endif
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(data as MemoryBlock)
		  #if TargetMacOS
		    declare function CFReadStreamCreateWithBytesNoCopy lib CarbonLib (allocator as Ptr, data as Ptr, size as Integer, deallocator as Ptr) as Ptr
		    
		    mData = data // we need to keep a ref to the MemoryBlock as long as the stream exists
		    super.Constructor CFReadStreamCreateWithBytesNoCopy (nil, data, data.Size, kCFAllocatorNull), hasOwnership
		  #endif
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetProperty(name as String) As CFType
		  #if TargetMacOS
		    declare function CFReadStreamCopyProperty lib CarbonLib (stream as Ptr, name as CFStringRef) as Ptr
		    
		    return CFType.NewObject (CFReadStreamCopyProperty (me.Reference, name), true, kCFPropertyListImmutable)
		  #endif
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function HasDataAvailable() As Boolean
		  #if TargetMacOS
		    declare function CFReadStreamHasBytesAvailable lib CarbonLib (stream as Ptr) as Boolean
		    
		    return CFReadStreamHasBytesAvailable (me.Reference)
		  #endif
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Open() As Boolean
		  #if TargetMacOS
		    declare function CFReadStreamOpen lib CarbonLib (stream as Ptr) as Boolean
		    
		    return CFReadStreamOpen (me.Reference)
		  #endif
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Read(maxBytes as Integer, ByRef data as String) As Boolean
		  // Pass a value > 0 in maxBytes. The returned data will contain no more than maxBytes
		  // Returns false if the stream is not open or if an error occured
		  // Be aware that the returned string will have no encoding set!
		  
		  if maxBytes <= 0 then
		    maxBytes = 1
		  end if
		  
		  #if TargetMacOS
		    declare function CFReadStreamRead lib CarbonLib (stream as Ptr, buffer as Ptr, bufLen as Integer) as Integer
		    
		    dim mb as MemoryBlock
		    'mb = NewMemoryBlock (maxBytes)
		    mb = New MemoryBlock (maxBytes)
		    dim n as Integer = CFReadStreamRead (me.Reference, mb, mb.Size)
		    if n >= 0 then
		      data = mb.StringValue(0,n)
		      return true
		    end if
		  #endif
		  
		  data = ""
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function SetProperty(name as String, value as CFType) As Boolean
		  #if TargetMacOS
		    declare function CFReadStreamSetProperty lib CarbonLib (stream as Ptr, name as CFStringRef, value as Ptr) as Boolean
		    
		    return CFReadStreamSetProperty (me.Reference, name, value.Reference)
		  #endif
		End Function
	#tag EndMethod


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
