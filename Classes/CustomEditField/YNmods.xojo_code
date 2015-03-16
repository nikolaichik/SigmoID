#tag Module
Protected Module YNmods
	#tag Note, Name = modifications of standard CEF
		
		multiline:
		- added CharsInLine property
		- added Resize method (to be called from window.resized event in Cocoa or .resizing in Carbon)
		- one line changed in .DrawContents to show character numbers rather than line numbers in the gutter
		- HighlightCharacterRange: adjusted to account for CRs
		- all occurrencies of selStart and SelLength prefixed with "cef"
		- added _new_ SelStart and selLength to match the ones in original EF. These adjust the cefSel... properties 
		   for the number of CRs  
		- two lines added to cef.mousedown to remove secondary selection when necessary
		
		ruler:
		added properties:
		- RulerPic as picture
		- HeaderHeight as integer
		modifications:
		- within DrawContents to draw the ruler and shift the text and the gutter down
		
		
		not done yet:
		- [done] right adjust numbers in the gutter
		- [done] replace the renumber method with appropriate stuff to get proper scroller max value
		- [sort of done] worked around by scrollValueX=1 when both setting and getting _no line move to the left_ (set horiz scroll to 0)
		- [done? needs proper checking!] typing/pasting.cutting/deleting should all take CRs into acount
		
		Cocoa glitches:
		- deactivating/activating the app leaves selected text highlight gray (Carbon reactivates it normally)
		   The workaround: set .hasfocus=true on window activation
	#tag EndNote


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
End Module
#tag EndModule
