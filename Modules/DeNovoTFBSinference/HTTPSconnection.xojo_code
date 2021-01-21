#tag Class
Protected Class HTTPSconnection
Inherits URLConnection
	#tag Event
		Sub ContentReceived(URL As String, HTTPStatus As Integer, content As String)
		  DeNovoTFBSinference.WebContent=content
		End Sub
	#tag EndEvent

	#tag Event
		Sub Error(e As RuntimeException)
		  DeNovoTFBSinference.HTTPSError=e.Message
		End Sub
	#tag EndEvent

	#tag Event
		Sub FileReceived(URL As String, HTTPStatus As Integer, file As FolderItem)
		  dim instream as TextInputStream
		  instream=TextInputStream.open(file)
		  WebContent=instream.ReadAll
		  instream.Close
		  
		End Sub
	#tag EndEvent


End Class
#tag EndClass
