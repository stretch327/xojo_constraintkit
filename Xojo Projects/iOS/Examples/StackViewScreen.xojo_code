#tag MobileScreen
Begin MobileScreen StackViewScreen
   BackButtonCaption=   ""
   Compatibility   =   ""
   ControlCount    =   0
   Device = 1
   HasNavigationBar=   True
   LargeTitleDisplayMode=   0
   Left            =   0
   Orientation = 0
   TabBarVisible   =   True
   TabIcon         =   0
   TintColor       =   &c00000000
   Title           =   "StackViews"
   Top             =   0
   Begin SOSConstraintKit.SOSStackView SOSStackView1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Alignment       =   0
      AutoLayout      =   SOSStackView1, 4, BottomLayoutGuide, 3, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   SOSStackView1, 1, <Parent>, 1, False, +1.00, 4, 1, *kStdGapCtlToViewH, , True
      AutoLayout      =   SOSStackView1, 2, <Parent>, 2, False, +1.00, 4, 1, -*kStdGapCtlToViewH, , True
      AutoLayout      =   SOSStackView1, 3, TopLayoutGuide, 4, False, +1.00, 4, 1, 0, , True
      BaselineRelativeArrangement=   False
      ControlCount    =   0
      Direction       =   1
      Distribution    =   1
      Enabled         =   True
      Height          =   503
      LayoutMarginsRelativeArrangement=   True
      Left            =   20
      LockedInPosition=   False
      Scope           =   0
      ScrollAreaHeight=   0.0
      ScrollAreaWidth =   0.0
      ScrollEnabled   =   True
      Spacing         =   24.0
      TintColor       =   &c000000
      Top             =   65
      Visible         =   True
      Width           =   280
   End
End
#tag EndMobileScreen

#tag WindowCode
#tag EndWindowCode

#tag Events SOSStackView1
	#tag Event
		Sub Opening()
		  
		  Me.Spacing = 0
		  Dim w As Double = Me.ScrollAreaWidth
		  For i As Integer = 1 To 25
		    Dim ctl As New SOSStackView
		    
		    Dim leftStory As New NewsContainer
		    leftStory.MakeRandomStory
		    
		    Dim rightStory As New NewsContainer
		    rightStory.MakeRandomStory
		    
		    SOSStackView(ctl).AddArrangedSubview(leftStory)
		    SOSStackView(ctl).AddArrangedSubview(rightStory)
		    SOSStackView(ctl).Distribution = SOSStackView.Distributions.FillEqually
		    ctl.HeightAnchor.ConstraintGreaterThanOrEqualToConstant(50).Active = True
		    ctl.Alignment = SOSStackView.Alignments.Center
		    
		    Me.AddArrangedSubview(ctl)
		    ctl.WidthAnchor.ConstraintEqualToConstant(w).Active = True
		    
		  Next
		  
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
