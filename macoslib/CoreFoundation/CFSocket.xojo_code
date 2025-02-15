#tag Class
Class CFSocket
Inherits CFType
	#tag Event
		Function ClassID() As UInteger
		  return me.ClassID
		End Function
	#tag EndEvent


	#tag Method, Flags = &h0
		Function Bind(address as CFData) As Boolean
		  #if TargetMacOS
		    declare function CFSocketSetAddress lib CarbonLib (socketRef as Ptr, addr as Ptr) as Integer
		    
		    if not ( self = nil ) then
		      dim errCode as Integer = CFSocketSetAddress (me.Reference, address.Reference)
		      return errCode = 0
		    end if
		  #endif
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function ClassID() As UInteger
		  #if TargetMacOS
		    declare function TypeID lib CarbonLib alias "CFSocketGetTypeID" () as UInteger
		    static id as UInteger = TypeID
		    return id
		  #endif
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Close()
		  #if TargetMacOS
		    declare sub CFSocketInvalidate lib CarbonLib (socketRef as CFTypeRef)
		    declare sub CFRunLoopRemoveSource lib CarbonLib (runLoopRef as Ptr, source as Ptr, mode as CFStringRef)
		    
		    CFSocketInvalidate(self)
		    
		    if me.theRLSrc <> nil then
		      CFRunLoopRemoveSource (me.theRunLoop, me.theRLSrc, CFConstant("kCFRunLoopCommonModes"))
		      CoreFoundation.Release(me.theRLSrc)
		      me.theRLSrc = nil
		    end if
		  #endif
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub Constructor()
		  myContext = new MemoryBlock(20) // = size of CFSocketContext
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(socketSignature as CFSocketSignature, callbackTypes as Integer, connect as Boolean = false, timeoutSeconds as Double = 10.0)
		  // Note: timeoutSeconds only matters if connect=true
		  
		  #if TargetMacOS
		    declare function CFSocketCreateWithSocketSignature lib CarbonLib (allocator as Ptr, ssig as Ptr, cbTypes as Integer, callBack as Ptr, contextRef as Ptr) as Ptr
		    declare function CFSocketCreateConnectedToSocketSignature lib CarbonLib (allocator as Ptr, ssig as Ptr, cbTypes as Integer, callBack as Ptr, contextRef as Ptr, timeout as Double) as Ptr
		    
		    prepareCallback()
		    if connect then
		      super.Constructor CFSocketCreateConnectedToSocketSignature (nil, socketSignature.Reference, callbackTypes, AddressOf m_socketCallBack, myContext, timeoutSeconds), true
		    else
		      super.Constructor CFSocketCreateWithSocketSignature (nil, socketSignature.Reference, callbackTypes, AddressOf m_socketCallBack, myContext), true
		    end if
		    installRunLoopHandler()
		  #endif
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Constructor(sock as integer, cbTypes as integer)
		  #if TargetMacOS
		    declare function CFSocketCreateWithNative lib CarbonLib (allocator as Ptr, sock as integer, cbTypes as Integer, callBack as Ptr, contextRef as Ptr) as Ptr
		    
		    myContext = new MemoryBlock(20) // = size of CFSocketContext
		    
		    prepareCallback()
		    dim p as Ptr = CFSocketCreateWithNative (nil, sock, cbTypes, AddressOf m_socketCallBack, myContext)
		    super.Constructor p, true
		    installRunLoopHandler()
		  #endif
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(protocolFamily as Integer, socketType as Integer, protocol as Integer, callbackTypes as Integer)
		  #if TargetMacOS
		    declare function CFSocketCreate lib CarbonLib (allocator as Ptr, protocolFamily as Integer, socketType as Integer, protocol as Integer, cbTypes as Integer, callBack as Ptr, contextRef as Ptr) as Ptr
		    
		    prepareCallback()
		    dim p as Ptr = CFSocketCreate (nil, protocolFamily, socketType, protocol, callbackTypes, AddressOf m_socketCallBack, myContext)
		    super.Constructor p, true
		    installRunLoopHandler()
		  #endif
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub Destructor()
		  me.Close
		  m_sockets.Remove(myContext.Long(4)) '_sockets.Remove(myContext.info)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub installRunLoopHandler()
		  #if TargetMacOS
		    
		    declare function CFRunLoopGetCurrent lib CarbonLib () as Ptr
		    declare function CFSocketCreateRunLoopSource lib CarbonLib (allocator as Ptr, socketRef as Ptr, order as Integer) as Ptr
		    declare sub CFRunLoopAddSource lib CarbonLib (runLoopRef as Ptr, source as Ptr, mode as CFStringRef)
		    
		    me.theRunLoop = CFRunLoopGetCurrent()
		    me.theRLSrc = CFSocketCreateRunLoopSource (nil, me.Reference, 0)
		    CFRunLoopAddSource (me.theRunLoop, me.theRLSrc, CFConstant("kCFRunLoopCommonModes"))
		    
		  #endif
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function IP4Address(ip4address as String, port as UInt16) As CFData
		  // struct sockaddr_in
		  
		  'TODO: turn into subclasses: CFSocketIP4Address, etc.
		  'TODO: resolve name!
		  
		  dim mb as new MemoryBlock (16)
		  mb.LittleEndian = false
		  mb.UInt8Value(0) = mb.Size
		  mb.UInt8Value(1) = CFSocket.PF_INET
		  mb.UInt16Value(2) = port
		  mb.UInt8Value(4) = Val(ip4address.NthField(".",1))
		  mb.UInt8Value(5) = Val(ip4address.NthField(".",2))
		  mb.UInt8Value(6) = Val(ip4address.NthField(".",3))
		  mb.UInt8Value(7) = Val(ip4address.NthField(".",4))
		  return new CFData (mb)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function IsValid() As Boolean
		  #if TargetMacOS
		    declare function CFSocketIsValid lib CarbonLib (socketRef as Ptr) as Boolean
		    
		    if not ( self = nil ) then
		      return CFSocketIsValid (me.Reference)
		    end if
		  #endif
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub m_socketCallBack(socketRef as Ptr, type as Integer, addressRef as Ptr, dataPtr as Ptr, context_info as Integer)
		  dim s as CFSocket = CFSocket(WeakRef(m_sockets.Value(context_info)).Value)
		  s.socketCallBack (socketRef, type, addressRef, dataPtr)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub prepareCallback()
		  dim v as Variant = me
		  dim info as Integer = v.Hash
		  myContext.Long(4) = info 'myContext.info = info
		  if m_sockets = nil then m_sockets = new Dictionary
		  if m_sockets.HasKey(info) then raise new RuntimeException // oops! that should never be able to happen
		  m_sockets.Value(info) = new WeakRef(me)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub socketCallBack(socketRef as Ptr, type as Integer, addressRef as Ptr, dataPtr as Ptr)
		  mHadConnectOrAccept = true
		  if type = 1 then
		    raiseEvent IncomingData (nil)
		  elseif type = 2 then
		    raiseEvent Accepted (new CFData(addressRef,false))
		  elseif type = 3 then
		    dim d as new CFData(dataPtr,false)
		    raiseEvent IncomingData (d)
		  elseif type = 4 then
		    dim mb as MemoryBlock = dataPtr
		    raiseEvent Connected (mb.Long(0))
		  elseif type = 8 then
		    raiseEvent DataSent ()
		  else
		    break //oops - unknown type
		  end
		  
		  // Keep the compiler from complaining
		  #pragma unused socketRef
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function UnixDomainAddress(unixPath as String) As CFData
		  // struct sockaddr_un
		  
		  if unixPath.Encoding <> nil then
		    unixPath = unixPath.ConvertEncoding(Encodings.UTF8) // just to make sure it's not in UTF-16 or something unusable
		  end if
		  dim mb as new MemoryBlock (2+unixPath.LenB+1)
		  mb.LittleEndian = false
		  mb.UInt8Value(0) = mb.Size
		  mb.UInt8Value(1) = CFSocket.PF_UNIX
		  mb.CString (2) = unixPath
		  return new CFData (mb)
		End Function
	#tag EndMethod


	#tag Hook, Flags = &h0
		Event Accepted(addressData as CFData)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event Connected(errorCode as Integer)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event DataSent()
	#tag EndHook

	#tag Hook, Flags = &h0
		Event IncomingData(data as CFData)
	#tag EndHook


	#tag Note, Name = About
		(Original sources are located here:  https://github.com/macoslib/macoslib)
		
		This class is still a work-in-progress (WIP). It functions basically, but requires a lot of understanding
		of Apple's rather scarce documentation on this. The CoreFoundation.TestSelf method contains some
		half-baked code showing what needs to be done to use this. E.g, it appears that one needs to attach
		the socket to a runloop, use the correct callbackType values and implement some of the events
		in CFSocket (which the test code doesn't to currently), otherwise Read or Write calls will just freeze
		the application.
		
		In all, maybe this CFSocket class is pretty useless, as RB's TCPSocket and IPCSocket classes provide
		all this nicely already, tested and x-platform.
		
		If you have good reasons to use CFSocket, though, please contact me (Thomas Tempelmann,
		tt@tempel.org), as I've implemented the current state (as of Dec 7, 2009) and know how it should
		work, at least a little.
		
		Some notes:
		- I've successfully created a TCP socket connection between two Macs and transferred data. This
		  required the server to use the kAcceptCallBack callback type with the constructor, and perform a
		  CFSocketBind call afterwards. It also required to implement the Accepted() event in which then the
		  streams were opened using the NativeHandle value from this socket, before data could be received
		  by the server side.
		- I've not been able to use Unix Domain Sockets successfully yet, at least not in a single
		  application. Maybe this only works if you use two separate applications. Haven't tried that
		  yet, though.
	#tag EndNote


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return mHadConnectOrAccept
			End Get
		#tag EndGetter
		HasConnected As Boolean
	#tag EndComputedProperty

	#tag Property, Flags = &h21
		Private mHadConnectOrAccept As Boolean
	#tag EndProperty

	#tag Property, Flags = &h21
		#tag Note
			could also use: CFSocketContext
		#tag EndNote
		Private myContext As MemoryBlock
	#tag EndProperty

	#tag Property, Flags = &h21
		#tag Note
			key: CFSocket's hash value
			value: WeakRef of CFSocket object
		#tag EndNote
		Private Shared m_sockets As Dictionary
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if TargetMacOS
			    declare function CFSocketGetNative lib CarbonLib (socketRef as Ptr) as CFSocketNativeHandle
			    
			    if not ( self = nil ) then
			      return CFSocketGetNative (me.Reference)
			    end if
			  #endif
			End Get
		#tag EndGetter
		NativeHandle As CFSocketNativeHandle
	#tag EndComputedProperty

	#tag Property, Flags = &h21
		Private theRLSrc As Ptr
	#tag EndProperty

	#tag Property, Flags = &h21
		Private theRunLoop As Ptr
	#tag EndProperty


	#tag Constant, Name = IPPROTO_ICMP, Type = Double, Dynamic = False, Default = \"1", Scope = Public
	#tag EndConstant

	#tag Constant, Name = IPPROTO_TCP, Type = Double, Dynamic = False, Default = \"6", Scope = Public
	#tag EndConstant

	#tag Constant, Name = IPPROTO_UDP, Type = Double, Dynamic = False, Default = \"17", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kAcceptCallBack, Type = Double, Dynamic = False, Default = \"2", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kConnectCallBack, Type = Double, Dynamic = False, Default = \"4", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kDataCallBack, Type = Double, Dynamic = False, Default = \"3", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kNoCallBack, Type = Double, Dynamic = False, Default = \"0", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kReadCallBack, Type = Double, Dynamic = False, Default = \"1", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kWriteCallBack, Type = Double, Dynamic = False, Default = \"8", Scope = Public
	#tag EndConstant

	#tag Constant, Name = PF_INET, Type = Double, Dynamic = False, Default = \"2", Scope = Public
	#tag EndConstant

	#tag Constant, Name = PF_INET6, Type = Double, Dynamic = False, Default = \"30", Scope = Public
	#tag EndConstant

	#tag Constant, Name = PF_UNIX, Type = Double, Dynamic = False, Default = \"1", Scope = Public
	#tag EndConstant

	#tag Constant, Name = SOCK_DGRAM, Type = Double, Dynamic = False, Default = \"2", Scope = Public
	#tag EndConstant

	#tag Constant, Name = SOCK_RAW, Type = Double, Dynamic = False, Default = \"3", Scope = Public
	#tag EndConstant

	#tag Constant, Name = SOCK_SEQPACKET, Type = Double, Dynamic = False, Default = \"5", Scope = Public
	#tag EndConstant

	#tag Constant, Name = SOCK_STREAM, Type = Double, Dynamic = False, Default = \"1", Scope = Public
	#tag EndConstant


	#tag ViewBehavior
		#tag ViewProperty
			Name="HasConnected"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
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
