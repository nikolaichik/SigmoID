#tag Class
Class CFNumber
Inherits CFType
Implements CFPropertyList
	#tag Event
		Function ClassID() As UInteger
		  return me.ClassID
		End Function
	#tag EndEvent

	#tag Event
		Function VariantValue() As Variant
		  return me.Value
		End Function
	#tag EndEvent


	#tag Method, Flags = &h0
		Shared Function ClassID() As UInteger
		  #if targetMacOS
		    declare function TypeID lib CarbonLib alias "CFNumberGetTypeID" () as UInteger
		    static id as UInteger = TypeID
		    return id
		  #endif
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(value as Variant)
		  #if targetMacOS
		    
		    // Introduced in MacOS X 10.0.
		    declare function CFNumberCreate lib CarbonLib (allocator as Ptr, theType as Integer, valuePtr as Ptr) as Ptr
		    
		    dim mb as new MemoryBlock(8)
		    dim numType as Integer
		    dim theType as integer = value.Type
		    select case theType
		    case value.TypeDouble
		      numType = kCFNumberFloat64Type
		      mb.DoubleValue(0) = value
		    case value.TypeInteger
		      numType = kCFNumberSInt32Type
		      mb.Int32Value(0) = value
		    case value.TypeLong
		      numType = kCFNumberSInt64Type
		      mb.Int64Value(0) = value
		    else
		      raise new TypeMismatchException
		    end select
		    
		    super.Constructor CFNumberCreate(nil, numType, mb), CFType.HasOwnership
		    
		  #else
		    #pragma unused value
		  #endif
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function CreateFromPListFile(file as FolderItem) As CFNumber
		  #if TargetMacOS
		    
		    dim plist as CFPropertyList = CFType.CreateFromPListFile( file, CoreFoundation.kCFPropertyListImmutable )
		    dim r as CFNumber = CFNumber( plist )
		    return r
		    
		  #else
		    
		    #pragma unused file
		    
		  #endif
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function CreateFromPListString(plistString as String) As CFNumber
		  #if TargetMacOS
		    
		    dim plist as CFPropertyList = CFType.CreateFromPListString( plistString, CoreFoundation.kCFPropertyListImmutable )
		    dim r as CFNumber = CFNumber( plist )
		    return r
		    
		  #else
		    
		    #pragma unused plistString
		    
		  #endif
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function NaN() As CFNumber
		  const kCFNumberNaN = "kCFNumberNaN"
		  static v as CFNumber = SpecialValue(kCFNumberNaN)
		  return v
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function NegativeInfinity() As CFNumber
		  const kCFNumberNegativeInfinity = "kCFNumberNegativeInfinity"
		  static v as CFNumber = SpecialValue(kCFNumberNegativeInfinity)
		  return v
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Operator_Compare(value As CFNumber) As Integer
		  // Added by Kem Tekinay.
		  
		  #if TargetMacOS
		    
		    if me.Reference = nil or value is nil or value.Reference = nil then
		      return super.Operator_Compare( value )
		      
		    else
		      // Introduced in MacOS X 10.0.
		      Declare Function CFNumberCompare Lib CarbonLib ( n1 As Ptr, n2 As Ptr, context As Ptr ) As Int32
		      
		      return CFNumberCompare( me.Reference, value.Reference, nil )
		    end if
		    
		  #else
		    #pragma unused value
		  #endif
		  
		  return 0 // Shouldn't get here
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Operator_Convert() As Variant
		  // Added by Kem Tekinay.
		  
		  return me.VariantValue
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Operator_Convert(value As Variant)
		  // Added by Kem Tekinay.
		  
		  me.Constructor( value )
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function PositiveInfinity() As CFNumber
		  const kCFNumberPositiveInfinity = "kCFNumberPositiveInfinity"
		  static v as CFNumber = SpecialValue(kCFNumberPositiveInfinity)
		  return v
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Function SpecialValue(symbolName as String) As CFNumber
		  // Note: I (TT) have changed the behavior in case the symbolName can't be found:
		  // Instead of returning a number (0), it returns nil so that the failure can be detected.
		  
		  dim p as Ptr = Carbon.Bundle.DataPointerNotRetained(symbolName)
		  if p = nil then
		    return nil
		  end if
		  
		  dim value as new CFNumber(p.Ptr(0), false)
		  return value
		End Function
	#tag EndMethod


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if TargetMacOS
			    soft declare function CFNumberGetValue lib CarbonLib (number as Ptr, theType as Integer, ByRef valuePtr as Double) as Boolean
			    
			    if not ( self = nil ) then
			      dim theValue as Double
			      if CFNumberGetValue(me.Reference, kCFNumberDoubleType, theValue) then
			        return theValue
			      else
			        return theValue //but it's an approximate value
			      end if
			    end if
			  #endif
			End Get
		#tag EndGetter
		DoubleValue As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if TargetMacOS
			    soft declare function CFNumberGetValue lib CarbonLib (number as Ptr, theType as Integer, ByRef valuePtr as Int64) as Boolean
			    
			    if not ( self = nil ) then
			      dim theValue as Int64
			      if CFNumberGetValue(me.Reference, kCFNumberSInt64Type, theValue) then
			        return theValue
			      else
			        return theValue //but it's an approximate value
			      end if
			    end if
			  #endif
			End Get
		#tag EndGetter
		Int64Value As Int64
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if TargetMacOS
			    
			    // Introduced in MacOS X 10.0.
			    declare function CFNumberGetValue lib CarbonLib (number as Ptr, theType as Integer, ByRef valuePtr as Integer) as Boolean
			    
			    if not ( self = nil ) then
			      dim theValue as Integer
			      if CFNumberGetValue(me.Reference, kCFNumberSInt32Type, theValue) then
			        return theValue
			      else
			        return theValue //but it's an approximate value
			      end if
			    end if
			  #endif
			End Get
		#tag EndGetter
		IntegerValue As Integer
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if TargetMacOS
			    
			    // Introduced in MacOS X 10.0.
			    declare function CFNumberIsFloatType lib CarbonLib (number as Ptr) as Boolean
			    
			    if not ( self = nil ) then
			      return CFNumberIsFloatType(me.Reference)
			    end if
			    
			  #endif
			End Get
		#tag EndGetter
		IsFloat As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if TargetMacOS
			    
			    // Introduced in MacOS X 10.0.
			    declare function CFNumberGetType lib CarbonLib (number as Ptr) as Integer
			    
			    if not ( self = nil ) then
			      return CFNumberGetType(me.Reference)
			    end if
			  #endif
			End Get
		#tag EndGetter
		Type As Integer
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  // returns a Variant containing either of these types: Single, Double, Integer, Int64
			  
			  #if targetMacOS
			    soft declare function CFNumberGetValue lib CarbonLib (number as Ptr, theType as Integer, valuePtr as Ptr) as Boolean
			    soft declare function CFNumberGetType lib CarbonLib (number as Ptr) as Integer
			    
			    if not ( self = nil ) then
			      dim numType as Integer = CFNumberGetType(me.Reference)
			      
			      // adjust the type we want
			      select case numType
			      case 6, 13, 16
			        numType = kCFNumberFloat64Type
			      case 5, 12
			        numType = kCFNumberFloat32Type
			      case 1, 2, 3, 7, 8, 9, 10, 14, 15
			        numType = kCFNumberSInt32Type
			      case 4, 11
			        numType = kCFNumberSInt64Type
			      else
			        numType = kCFNumberFloat64Type
			      end select
			      
			      dim mb as new MemoryBlock(8)
			      if CFNumberGetValue(me.Reference, numType, mb) then
			        select case numType
			        case kCFNumberFloat64Type
			          return mb.DoubleValue(0)
			        case kCFNumberFloat32Type
			          return mb.SingleValue(0)
			        case kCFNumberSInt32Type
			          return mb.Int32Value(0)
			        case kCFNumberSInt64Type
			          return mb.Int64Value(0)
			        end select
			      end if
			      
			    end if
			  #endif
			End Get
		#tag EndGetter
		Value As Variant
	#tag EndComputedProperty


	#tag Constant, Name = kCFNumberDoubleType, Type = Double, Dynamic = False, Default = \"13", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kCFNumberFloat32Type, Type = Double, Dynamic = False, Default = \"5", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kCFNumberFloat64Type, Type = Double, Dynamic = False, Default = \"6", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kCFNumberFloatType, Type = Double, Dynamic = False, Default = \"12", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kCFNumberSInt16Type, Type = Double, Dynamic = False, Default = \"2", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kCFNumberSInt32Type, Type = Double, Dynamic = False, Default = \"3", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kCFNumberSInt64Type, Type = Double, Dynamic = False, Default = \"4", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kCFNumberSInt8Type, Type = Double, Dynamic = False, Default = \"1", Scope = Public
	#tag EndConstant


	#tag ViewBehavior
		#tag ViewProperty
			Name="DoubleValue"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Double"
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
			Name="Int64Value"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Int64"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="IntegerValue"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="IsFloat"
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
		#tag ViewProperty
			Name="Type"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
