#tag MobileScreen
Begin MobileScreen AnimationScreen
   BackButtonCaption=   ""
   Compatibility   =   ""
   ControlCount    =   0
   Device = 12
   HasNavigationBar=   True
   LargeTitleDisplayMode=   0
   Left            =   0
   Orientation = 0
   TabBarVisible   =   True
   TabIcon         =   0
   TintColor       =   &c00000000
   Title           =   "Runtime Changes"
   Top             =   0
   Begin MobileButton ToggleButton
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   ToggleButton, 2, <Parent>, 2, False, +1.00, 3, 1, -*kStdGapCtlToViewH, , True
      AutoLayout      =   ToggleButton, 7, , 0, False, +1.00, 1, 1, 137, , True
      AutoLayout      =   ToggleButton, 11, Label1, 11, False, +1.00, 0, 1, 0, , True
      AutoLayout      =   ToggleButton, 8, , 0, False, +1.00, 1, 1, 30, , True
      Caption         =   "Toggle Constraint"
      CaptionColor    =   &c007AFF00
      ControlCount    =   0
      Enabled         =   True
      Height          =   30
      Left            =   257
      LockedInPosition=   False
      Scope           =   0
      TextFont        =   ""
      TextSize        =   0
      TintColor       =   &c000000
      Top             =   73
      Visible         =   True
      Width           =   137
   End
   Begin MobileTextField TextField1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Alignment       =   0
      AllowAutoCorrection=   False
      AllowSpellChecking=   False
      AutoCapitalizationType=   0
      AutoLayout      =   TextField1, 8, , 0, True, +1.00, 4, 1, 31, , True
      AutoLayout      =   TextField1, 1, Label1, 2, False, +1.00, 4, 1, *kStdControlGapH, , True
      AutoLayout      =   TextField1, 2, ToggleButton, 1, False, +1.00, 3, 1, -*kStdControlGapH, , True
      AutoLayout      =   TextField1, 3, <Parent>, 3, False, +1.00, 1, 1, 660, , True
      BorderStyle     =   3
      ControlCount    =   0
      Enabled         =   True
      Height          =   31
      Hint            =   "hint"
      InputType       =   0
      Left            =   128
      LockedInPosition=   False
      Password        =   False
      ReadOnly        =   False
      ReturnCaption   =   0
      Scope           =   0
      Text            =   "Text"
      TextColor       =   &c000000
      TextFont        =   ""
      TextSize        =   0
      TintColor       =   &c000000
      Top             =   660
      Visible         =   True
      Width           =   121
   End
   Begin MobileLabel Label1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Alignment       =   0
      AutoLayout      =   Label1, 1, <Parent>, 1, False, +1.00, 4, 1, *kStdGapCtlToViewH, , True
      AutoLayout      =   Label1, 7, , 0, False, +1.00, 4, 1, 100, , True
      AutoLayout      =   Label1, 3, TopLayoutGuide, 4, False, +1.00, 4, 1, *kStdControlGapV, , True
      AutoLayout      =   Label1, 8, , 0, False, +1.00, 4, 1, 30, , True
      ControlCount    =   0
      Enabled         =   True
      Height          =   30
      Left            =   20
      LineBreakMode   =   0
      LockedInPosition=   False
      Scope           =   0
      Text            =   "Untitled"
      TextColor       =   &c000000
      TextFont        =   ""
      TextSize        =   0
      TintColor       =   &c000000
      Top             =   73
      Visible         =   True
      Width           =   100
   End
   Begin MobileButton AnimateButton
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   AnimateButton, 1, ToggleButton, 1, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   AnimateButton, 7, , 0, False, +1.00, 4, 1, 137, , True
      AutoLayout      =   AnimateButton, 3, Label1, 4, False, +1.00, 4, 1, *kStdControlGapV, , True
      AutoLayout      =   AnimateButton, 8, , 0, False, +1.00, 4, 1, 30, , True
      Caption         =   "Animate Constraint"
      CaptionColor    =   &c007AFF00
      ControlCount    =   0
      Enabled         =   True
      Height          =   30
      Left            =   257
      LockedInPosition=   False
      Scope           =   0
      TextFont        =   ""
      TextSize        =   0
      TintColor       =   &c000000
      Top             =   111
      Visible         =   True
      Width           =   137
   End
End
#tag EndMobileScreen

#tag WindowCode
	#tag Event
		Sub Opening()
		  // Recreate the constraints for the controls we want to adjust below
		  // Priorities are set to < 999 so they don't move to the position of the
		  // textfield
		  Self.ConvertConstraintsForAllControls(750)
		  
		  // NOTE: don't use 1000 (required) for priority if you don't need to.
		  // iOS will prevent changing priorities to/from 1000 at runtime.
		  Self.ConvertConstraintsForControl(label1, 999) 
		  
		  Dim c As SOSLayoutConstraint
		  
		  // Set the label to match its intrinsic width
		  c = label1.ConstraintMatchingIntrinsicWidth
		  c.Priority = 999
		  c.active = True
		  
		  // create baseline alignments with a priority of 999 so they're obeyed first.
		  // The textfield.baseline to the label 
		  txtBaseline = New SOSLayoutConstraint(textfield1.Handle, label1.handle, SOSConstraintKit.SOSLayoutConstraint.LayoutAttributes.FirstBaseline)
		  txtBaseline.Offset = TextField1.FirstBaselineOffset/2
		  txtBaseline.Priority = 999
		  txtBaseline.active = True
		  
		  // ... and button.baseline to the label
		  c = New SOSLayoutConstraint(ToggleButton.Handle, label1.Handle, SOSConstraintKit.SOSLayoutConstraint.LayoutAttributes.FirstBaseline)
		  c.Priority = 999
		  c.active = True
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h21
		Private Sub ChangeConstraints()
		  txtBaseline.Active = Not txtBaseline.active
		  
		  // ask the layout for the Left constraint for the AnimateButton
		  Dim animateButtonLeft As SOSLayoutConstraint = Self.ConstraintForControlAttribute(AnimateButton, SOSLayoutConstraint.LayoutAttributes.Left)
		  If animateButtonLeft<>Nil Then
		    If txtBaseline.Active Then
		      animateButtonLeft.Offset = -200
		    Else
		      animateButtonLeft.Offset = 0
		    End If
		  End If
		  
		  Self.EndAnimation // this is needed for the animation function
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		txtBaseline As SOSLayoutConstraint
	#tag EndProperty


#tag EndWindowCode

#tag Events ToggleButton
	#tag Event
		Sub Pressed()
		  ChangeConstraints
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events AnimateButton
	#tag Event
		Sub Pressed()
		  StartAnimation(0.3, AddressOf ChangeConstraints)
		End Sub
	#tag EndEvent
#tag EndEvents
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
		Name="BackButtonCaption"
		Visible=true
		Group="Behavior"
		InitialValue=""
		Type="String"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasNavigationBar"
		Visible=true
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="TabIcon"
		Visible=true
		Group="Behavior"
		InitialValue=""
		Type="Picture"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Title"
		Visible=true
		Group="Behavior"
		InitialValue="Untitled"
		Type="String"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
	#tag ViewProperty
		Name="LargeTitleDisplayMode"
		Visible=true
		Group="Behavior"
		InitialValue="2"
		Type="MobileScreen.LargeTitleDisplayModes"
		EditorType="Enum"
		#tag EnumValues
			"0 - Automatic"
			"1 - Always"
			"2 - Never"
		#tag EndEnumValues
	#tag EndViewProperty
	#tag ViewProperty
		Name="TabBarVisible"
		Visible=true
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="TintColor"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="ColorGroup"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="ControlCount"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
#tag EndViewBehavior
