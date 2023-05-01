#tag Module
Protected Module FrameworkLoaders
	#tag CompatibilityFlags = ( TargetIOS and ( Target64Bit ) )
	#tag Method, Flags = &h21
		Private Sub LoadFramework(Library As String)
		  #If TargetIOS or TargetMacOS
		    Dim libName As String = library.LastField("/").Replace(".framework","")
		    If library.IndexOf("/") = -1 Then
		      // probably a system library
		      library = "/System/Library/Frameworks/" + libName + ".framework/" + libName
		    End If
		    
		    If Library.Right(10) = ".framework" Then
		      library = Library + "/" + libName
		    End If
		    
		    Declare Function dlopen Lib "/usr/Lib/libSystem.dylib" ( filename As CString, flag As Int32 ) As Ptr
		    Declare Function dlerror Lib "/usr/Lib/libSystem.dylib" () As CString
		    Const RTLD_LAZY = 1
		    Const RTLD_LOCAL = 4
		    Dim p As ptr = dlopen(library, RTLD_LAZY Or RTLD_LOCAL)
		    If p = Nil Then
		      Dim reason As String = dlerror()
		      // Raise New InvalidArgumentException(reason)
		      break
		    End If
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub LoadRevealFramework()
		  #If TargetiOS
		    LoadFramework("@executable_path/Frameworks/RevealServer.framework/RevealServer")
		  #EndIf
		End Sub
	#tag EndMethod


	#tag ViewBehavior
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			InitialValue=""
			Type="String"
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
			Name="Super"
			Visible=true
			Group="ID"
			InitialValue=""
			Type="String"
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
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Module
#tag EndModule
