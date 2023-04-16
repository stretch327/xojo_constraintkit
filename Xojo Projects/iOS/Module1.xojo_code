#tag Module
Protected Module Module1
	#tag Method, Flags = &h0
		Sub AnimateChanges(durationSeconds as double, animationBlock as AnimateDelegate)
		  Declare Function NSClassFromString Lib "Foundation" (name As cfstringref) As ptr
		  Declare Function NSStringFromClass Lib "Foundation" (cls As ptr) As CFStringRef
		  
		  
		  // + (void)animateWithDuration:(NSTimeInterval)duration animations:(void (^)(void))animations;
		  Declare Sub animateWithDuration_animations Lib "Foundation" Selector "animateWithDuration:animations:" ( cls As ptr , duration As Double , animations As Ptr )
		  
		  Dim bl As New ObjCBlock(animationBlock)
		  
		  animateWithDuration_animations(NSClassFromString("UIView"), durationSeconds, bl.Handle)
		End Sub
	#tag EndMethod

	#tag DelegateDeclaration, Flags = &h0
		Delegate Sub AnimateDelegate()
	#tag EndDelegateDeclaration

	#tag Method, Flags = &h0
		Sub LoadFramework(Library As String)
		  #If TargetIOS
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
		      Raise New InvalidArgumentException(reason)
		    End If
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
