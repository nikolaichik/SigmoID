#tag Class
Class CFRunLoopTimer
Inherits CFType
	#tag Event
		Function ClassID() As UInteger
		  return me.ClassID
		End Function
	#tag EndEvent


	#tag Method, Flags = &h0
		Shared Function ClassID() As UInteger
		  #if targetMacOS
		    soft declare function TypeID lib CarbonLib alias "CFRunLoopTimerGetTypeID" () as UInteger
		    static id as UInteger = TypeID
		    return id
		  #endif
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub Constructor()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(period as Double, fireTime as Date = nil)
		  Start period, fireTime
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub Destructor()
		  #if targetMacOS
		    soft declare sub CFRunLoopTimerInvalidate lib CarbonLib (t as Ptr)
		    
		    dim p as Ptr = me.Reference
		    if p <> nil then
		      CFRunLoopTimerInvalidate p
		      if ObjectMap.HasKey(p) then
		        ObjectMap.Remove p
		      end if
		      ' leads to crashes: CFType.Release(p)
		    end
		  #endif
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub InvokeAction()
		  if me.Action <> nil then
		    me.Action.Invoke
		  else
		    raiseEvent Action
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Function MainRunLoop() As Ptr
		  //perhaps we should add a separate CFRunLoop class.
		  
		  #if targetMacOS
		    soft declare function CFRunLoopGetMain lib CarbonLib () as Ptr
		    
		    return CFRunLoopGetMain
		  #endif
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Function ObjectMap() As Dictionary
		  static d as new Dictionary
		  return d
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Start(period as Double, fireTime as Date = nil)
		  //period is the time in seconds between invocations of the callback.  fireTime is the time of the first invocation.
		  
		  #if targetMacOS
		    soft declare function CFRunLoopTimerCreate lib CarbonLib (allocator as Ptr, fireDate as Double, interval as Double, flags as UInteger, order as Integer, callout as Ptr, context as Ptr) as Ptr
		    soft declare function CFAbsoluteTimeGetCurrent lib CarbonLib () as Double
		    
		    dim fireDate as Double
		    if fireTime is nil then
		      fireDate = CFAbsoluteTimeGetCurrent + period
		    else
		      fireDate = fireTime.TotalSeconds - UnixEpoch - fireTime.GMTOffset*3600.0
		    end if
		    
		    const currentlyIgnored = 0
		    me.Constructor(CFRunLoopTimerCreate(nil, fireDate, period, currentlyIgnored, currentlyIgnored, AddressOf TimerCallback, nil), true)
		    ObjectMap.Value(me.Reference) = new WeakRef(me)
		    me.Enabled = true
		  #endif
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub TimerCallback(timer as Ptr, info as Ptr)
		  dim w as WeakRef = ObjectMap.Lookup(timer, nil)
		  if w is nil then
		    //something is very wrong
		    return
		  end if
		  if not w.Value isA CFRunLoopTimer then
		    //something is very wrong
		    ObjectMap.Remove timer
		    return
		  end if
		  
		  CFRunLoopTimer(w.Value).InvokeAction
		  
		  // Keep the compiler from complaining
		  #pragma unused info
		  
		End Sub
	#tag EndMethod


	#tag Hook, Flags = &h0
		Event Action()
	#tag EndHook


	#tag Note, Name = About
		If a user opens a menu or keeps the mouse button pressed on a
		button, the Timer.Action event and code inside Thread.Run won't
		be executed.
		
		This class, however, will run in such circumstances. This makes it
		possible to keep your application able to handle other external events
		through polling.
		
		You may either add this class to a window or subclass it, with filling
		in the Action event, or create a new instance of this class and then
		assign a (delegate) method to this class's Action property.
	#tag EndNote

	#tag Note, Name = Debugging
		Careful when debugging code that uses CFRunLoopTimer:
		
		CFRunLoopTimers continue to run while code execution is paused in the debugger,
		so you may not be able to single step through such timer code.
	#tag EndNote


	#tag Property, Flags = &h0
		Action As CoreFoundation.TimerActionDelegate
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if targetMacOS
			    soft declare function CFRunLoopContainsTimer lib CarbonLib (rl as Ptr, t as Ptr, mode as CFStringRef) as Boolean
			    
			    dim p as Ptr = me.Reference
			    if p <> nil then
			      return CFRunLoopContainsTimer(MainRunLoop, p, Carbon.Bundle.StringPointerRetained(kCFRunLoopCommonModes))
			    end
			  #endif
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #if targetMacOS
			    
			    if value = me.Enabled then
			      return
			    end if
			    
			    if me.Reference = nil then
			      // error: you need to call Start() first!
			      raise new RuntimeException
			    end
			    
			    if value then
			      soft declare sub CFRunLoopAddTimer lib CarbonLib (rl as Ptr, t as Ptr, mode as CFStringRef)
			      
			      CFRunLoopAddTimer MainRunLoop, me.Reference, Carbon.Bundle.StringPointerRetained(kCFRunLoopCommonModes)
			    else
			      soft declare sub CFRunLoopRemoveTimer lib CarbonLib (rl as Ptr, t as Ptr, mode as CFStringRef)
			      
			      CFRunLoopRemoveTimer MainRunLoop, me.Reference, Carbon.Bundle.StringPointerRetained(kCFRunLoopCommonModes)
			    end if
			    
			  #else
			    #pragma unused value
			  #endif
			End Set
		#tag EndSetter
		Enabled As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if targetMacOS
			    soft declare function CFRunLoopTimerDoesRepeat lib CarbonLib ( t as Ptr) as Boolean
			    
			    return CFRunLoopTimerDoesRepeat(me.Reference)
			  #endif
			End Get
		#tag EndGetter
		IsRepeating As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if targetMacOS
			    soft declare function CFRunLoopTimerIsValid lib CarbonLib (t as Ptr) as Boolean
			    return CFRunLoopTimerIsValid(me.Reference)
			  #endif
			End Get
		#tag EndGetter
		IsValid As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if targetMacOS
			    soft declare function CFRunLoopTimerGetInterval lib CarbonLib (t as Ptr) as Double
			    return CFRunLoopTimerGetInterval(me.Reference)
			  #endif
			End Get
		#tag EndGetter
		Period As Double
	#tag EndComputedProperty


	#tag Constant, Name = kCFRunLoopCommonModes, Type = String, Dynamic = False, Default = \"kCFRunLoopCommonModes", Scope = Private
	#tag EndConstant

	#tag Constant, Name = UnixEpoch, Type = Double, Dynamic = False, Default = \"3061152000.0", Scope = Private
	#tag EndConstant


	#tag ViewBehavior
		#tag ViewProperty
			Name="Enabled"
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
			Name="IsRepeating"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="IsValid"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Boolean"
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
			Name="Period"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Double"
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
