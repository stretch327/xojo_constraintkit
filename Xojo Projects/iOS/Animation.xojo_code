#tag Module
Protected Module Animation
	#tag DelegateDeclaration, Flags = &h0
		Delegate Sub AnimateDelegate()
	#tag EndDelegateDeclaration

	#tag Method, Flags = &h0
		Sub EndAnimation(extends view as MobileScreen)
		  view.LayoutIfNeeded
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub StartAnimation(durationSeconds as double, animationBlock as AnimateDelegate)
		  Declare Function NSClassFromString Lib "Foundation" (name As cfstringref) As ptr
		  Declare Function NSStringFromClass Lib "Foundation" (cls As ptr) As CFStringRef
		  
		  
		  // + (void)animateWithDuration:(NSTimeInterval)duration animations:(void (^)(void))animations;
		  Declare Sub animateWithDuration_animations Lib "Foundation" Selector "animateWithDuration:animations:" ( cls As ptr , duration As Double , animations As Ptr )
		  
		  Dim bl As New ObjCBlock(animationBlock)
		  
		  animateWithDuration_animations(NSClassFromString("UIView"), durationSeconds, bl.Handle)
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