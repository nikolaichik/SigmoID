#tag Class
Class CFWriteStream
Inherits CFStream
	#tag Event
		Function ClassID() As UInteger
		  return me.ClassID
		End Function
	#tag EndEvent

	#tag Event
		Function GetStatus() As Integer
		  #if TargetMacOS
		    declare function CFWriteStreamGetStatus lib CarbonLib (stream as Ptr) as Integer
		    
		    return CFWriteStreamGetStatus (me.Reference)
		  #endif
		End Function
	#tag EndEvent


	#tag Method, Flags = &h0
		Shared Function ClassID() As UInteger
		  #if TargetMacOS
		    declare function TypeID lib CarbonLib alias "CFWriteStreamGetTypeID" () as UInteger
		    static id as UInteger = TypeID
		    return id
		  #endif
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Close()
		  #if TargetMacOS
		    declare sub CFWriteStreamClose lib CarbonLib (stream as Ptr)
		    
		    if not ( self = nil ) then
		      CFWriteStreamClose (me.Reference)
		    end if
		  #endif
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(socketHandle as CFSocketNativeHandle)
		  #if TargetMacOS
		    declare sub CFStreamCreatePairWithSocket lib CarbonLib (allocator as Ptr, sock as CFSocketNativeHandle, null as Ptr, ByRef write as Ptr)
		    
		    dim p as Ptr
		    CFStreamCreatePairWithSocket (nil, socketHandle, nil, p)
		    super.Constructor (p, true)
		  #endif
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(fileURL as CFURL, appendToFile as Boolean = false)
		  #if TargetMacOS
		    declare function CFWriteStreamCreateWithFile lib CarbonLib (allocator as Ptr, url as Ptr) as Ptr
		    
		    super.Constructor CFWriteStreamCreateWithFile (nil, fileURL.Reference), true
		    
		    if appendToFile then
		      call SetProperty (kPropertyAppendToFile, CFBoolean.GetTrue)
		    end
		    
		  #endif
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(outputBuffer as MemoryBlock)
		  #if TargetMacOS
		    declare function CFWriteStreamCreateWithBuffer lib CarbonLib (allocator as Ptr, data as Ptr, size as Integer) as Ptr
		    
		    mData = outputBuffer // we need to keep a ref to the MemoryBlock as long as the stream exists
		    super.Constructor CFWriteStreamCreateWithBuffer (nil, outputBuffer, outputBuffer.Size), hasOwnership
		  #endif
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetProperty(name as String) As CFType
		  #if TargetMacOS
		    declare function CFWriteStreamCopyProperty lib CarbonLib (stream as Ptr, name as CFStringRef) as Ptr
		    
		    return CFType.NewObject (CFWriteStreamCopyProperty (me.Reference, name), true, kCFPropertyListImmutable)
		  #endif
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function IsReady() As Boolean
		  // Returns false if data can't be written to stream without it blocking (= waiting)
		  // Returns true otherwise (i.e. usually when the data can be written without delay)
		  
		  #if TargetMacOS
		    declare function CFWriteStreamCanAcceptBytes lib CarbonLib (stream as Ptr) as Boolean
		    
		    return CFWriteStreamCanAcceptBytes (me.Reference)
		  #endif
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Open() As Boolean
		  #if TargetMacOS
		    declare function CFWriteStreamOpen lib CarbonLib (stream as Ptr) as Boolean
		    
		    return CFWriteStreamOpen (me.Reference)
		  #endif
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function SetProperty(name as String, value as CFType) As Boolean
		  #if TargetMacOS
		    declare function CFWriteStreamSetProperty lib CarbonLib (stream as Ptr, name as CFStringRef, value as Ptr) as Boolean
		    
		    return CFWriteStreamSetProperty (me.Reference, name, value.Reference)
		  #endif
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Write(data as String) As Integer
		  // Returns the number of bytes actually written to the stream, or -1 if not open or an error occured
		  
		  #if TargetMacOS
		    declare function CFWriteStreamWrite lib CarbonLib (stream as Ptr, buffer as Ptr, bufLen as Integer) as Integer
		    
		    dim mb as MemoryBlock = data
		    return CFWriteStreamWrite (me.Reference, mb, mb.Size)
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
