#tag Class
Class CFMutableString
Inherits CFString
	#tag Method, Flags = &h0
		Sub Append(s as String)
		  #if TargetMacOS
		    declare Sub CFStringAppend Lib CarbonLib (theString as Ptr, cfStr as CFStringRef, encoding as Integer)
		    
		    const kCFTextEncodingUnknown = &hffff
		    
		    dim enc as TextEncoding = Encoding(s)
		    
		    if enc <> nil then
		      CFStringAppend me.Reference, s, enc.Code
		    else
		      CFStringAppend me.Reference, s, kCFTextEncodingUnknown
		    end
		  #endif
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(maxLength as Integer = 0)
		  // maxLength=0 means unlimited
		  
		  #if TargetMacOS
		    declare function CFStringCreateMutable Lib CarbonLib (alloc as Ptr, maxLength as Integer) as Ptr
		    
		    dim theRef as Ptr
		    theRef = CFStringCreateMutable(nil, maxLength)
		    super.Constructor theRef, true
		  #endif
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(s as string)
		  //15% faster than previous implementation (running Cocoa)
		  
		  #if TargetMacOS
		    
		    declare function CFStringCreateMutableCopy Lib CarbonLib (alloc as Ptr, maxLength as Integer, theString as CFStringRef ) as Ptr
		    
		    dim theRef as Ptr
		    theRef = CFStringCreateMutableCopy( nil, 0, s )
		    super.Constructor   theRef, true
		    
		  #else
		    
		    #pragma unused s
		    
		  #endif
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function CreateFromPListFile(file as FolderItem) As CFMutableString
		  #if TargetMacOS
		    
		    dim plist as CFPropertyList = CFType.CreateFromPListFile( file, CoreFoundation.kCFPropertyListMutableContainersAndLeaves )
		    dim r as CFMutableString = CFMutableString( plist )
		    return r
		    
		  #else
		    
		    #pragma unused file
		    
		  #endif
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function CreateFromPListString(plistString as String) As CFMutableString
		  #if TargetMacOS
		    
		    dim plist as CFPropertyList = CFType.CreateFromPListString( plistString, CoreFoundation.kCFPropertyListMutableContainersAndLeaves )
		    dim r as CFMutableString = CFMutableString( plist )
		    return r
		    
		  #else
		    
		    #pragma unused plistString
		    
		  #endif
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub InsertString(StringToInsert as CFStringRef, AtIndex as integer)
		  //Warning: this is very slow (3x) compared to pure RB code, at least on Cocoa
		  
		  #if TargetMacOS
		    soft declare sub CFStringInsert lib CarbonLib ( theString as Ptr, idx as integer, insertedStr as CFStringRef )
		    
		    CFStringInsert   me.Reference, AtIndex, StringToInsert
		  #endif
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub NormalizeUnicode(form as String)
		  
		  #if TargetMacOS
		    static forms() as string = Array( "NFD", "NFKD", "NFC", "NFKC" )
		    
		    declare sub CFStringNormalize Lib CarbonLib (strg as Ptr, form as integer)
		    
		    dim normidx as integer = forms.IndexOf( form )
		    
		    if normidx<>-1 then
		      CFStringNormalize( me.Reference, normidx )
		      
		    end if
		  #endif
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ToLowercase()
		  #if TargetMachO
		    Declare Sub CFStringLowercase Lib CarbonLib (theString as Ptr, locale as Integer)
		    Declare Function CFLocaleGetSystem Lib CarbonLib () as Integer
		    
		    dim systemLocale as Integer
		    
		    systemLocale = CFLocaleGetSystem()
		    if systemLocale <> 0 then
		      CFStringLowercase me.Reference, systemLocale
		    end if
		  #endif
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ToUppercase()
		  #if TargetMachO
		    Declare Sub CFStringUppercase Lib CarbonLib (theString as Ptr, locale as Integer)
		    Declare Function CFLocaleGetSystem Lib CarbonLib () as Integer
		    
		    dim systemLocale as Integer
		    
		    systemLocale = CFLocaleGetSystem()
		    if systemLocale <> 0 then
		      CFStringUppercase me.Reference, systemLocale
		    end if
		  #endif
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub TrimString(StringToDelete as CFStringRef)
		  #if TargetMacOS
		    soft declare sub CFStringTrim lib CarbonLib ( theString as Ptr, trimString as CFStringRef )
		    
		    CFStringTrim  me.Reference, StringToDelete
		  #endif
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub TrimWhitespace()
		  #if TargetMacOS
		    soft declare sub CFStringTrimWhitespace lib CarbonLib ( theString as Ptr )
		    
		    CFStringTrimWhitespace   me.Reference
		    
		  #endif
		End Sub
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
