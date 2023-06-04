#tag Module
Protected Module Animation
	#tag CompatibilityFlags = ( TargetDesktop and ( Target64Bit ) ) or ( TargetIOS and ( Target64Bit ) )
	#tag DelegateDeclaration, Flags = &h0, Description = 436F6D6D616E647320746F206578656375746520647572696E672074686520616E696D6174696F6E2073657175656E6365
		Delegate Sub AnimateDelegate()
	#tag EndDelegateDeclaration

	#tag Method, Flags = &h0, Description = 456E64732074686520616E696D6174696F6E2073657175656E63652E204D7573742062652063616C6C6564206F6E636520616C6C206F6620796F757220636F6D6D616E64732068617665206265656E2065786563757465642E
		Sub EndAnimation(extends view as MobileScreen)
		  // Call this method when you have finished making changes in the animation callback delegate.
		  #If TargetiOS
		    Declare Sub layoutIfNeeded Lib "Foundation" Selector "layoutIfNeeded" (obj As ptr)
		    layoutIfNeeded(view.Handle)
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 43616C6C2074686973206D6574686F6420746F20737461727420616E20616E696D6174696F6E2C2070617373696E6720696E20746865206475726174696F6E20616E6420616E20416464726573734F6620746865206D6574686F64207468617420646566696E657320746865206D6F76656D656E7420666F722074686520616E696D6174696F6E
		Sub StartAnimation(durationSeconds as double, animationBlock as AnimateDelegate)
		  // Call this method to set up an animation, specifying the number of seconds the animation should take and the animation callback block to execute.
		  #If TargetiOS
		    Declare Function NSClassFromString Lib "Foundation" (name As cfstringref) As ptr
		    
		    // + (void)animateWithDuration:(NSTimeInterval)duration animations:(void (^)(void))animations;
		    Declare Sub animateWithDuration_animations Lib "Foundation" Selector "animateWithDuration:animations:" ( cls As ptr , duration As Double , animations As Ptr )
		    
		    Dim bl As New ObjCBlock(animationBlock)
		    
		    animateWithDuration_animations(NSClassFromString("UIView"), durationSeconds, bl.Handle)
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
