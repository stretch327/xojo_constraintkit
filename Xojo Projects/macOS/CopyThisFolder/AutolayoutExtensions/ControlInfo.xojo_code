#tag Class
Private Class ControlInfo
	#tag CompatibilityFlags = ( TargetDesktop and ( Target64Bit ) ) or ( TargetIOS and ( Target64Bit ) )
	#tag Method, Flags = &h0
		Sub Constructor(ctl as DesktopContainer)
		  mTop = ctl.top
		  mLeft = ctl.Left
		  mWidth = ctl.Width
		  mHeight = ctl.Height
		  
		  mLockBottom = ctl.LockBottom
		  mLockLeft = ctl.LockLeft
		  mLockRight = ctl.LockRight
		  mLockTop = ctl.LockTop
		  
		  mControl = ctl
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(ctl as DesktopUIControl)
		  mTop = ctl.top
		  mLeft = ctl.Left
		  mWidth = ctl.Width
		  mHeight = ctl.Height
		  
		  mLockBottom = ctl.LockBottom
		  mLockLeft = ctl.LockLeft
		  mLockRight = ctl.LockRight
		  mLockTop = ctl.LockTop
		  
		  mControl = ctl
		End Sub
	#tag EndMethod


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return mControl
			End Get
		#tag EndGetter
		Control As Object
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return mHeight
			End Get
		#tag EndGetter
		Height As Integer
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return mLeft
			End Get
		#tag EndGetter
		Left As Integer
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return mLockBottom
			End Get
		#tag EndGetter
		LockBottom As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return mLockLeft
			End Get
		#tag EndGetter
		LockLeft As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return mLockRight
			End Get
		#tag EndGetter
		LockRight As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return mLockTop
			End Get
		#tag EndGetter
		LockTop As Boolean
	#tag EndComputedProperty

	#tag Property, Flags = &h21
		Private mControl As Object
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mHeight As Integer
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mLeft As Integer
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mLockBottom As Boolean
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mLockLeft As Boolean
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mLockRight As Boolean
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mLockTop As Boolean
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mTop As Integer
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mWidth As Integer
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return mTop
			End Get
		#tag EndGetter
		Top As Integer
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return mWidth
			End Get
		#tag EndGetter
		Width As Integer
	#tag EndComputedProperty


	#tag ViewBehavior
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
			Name="Height"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="LockBottom"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="LockLeft"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="LockRight"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="LockTop"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Width"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
