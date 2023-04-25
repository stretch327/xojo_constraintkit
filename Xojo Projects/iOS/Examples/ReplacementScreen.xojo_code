#tag MobileScreen
Begin MobileScreen ReplacementScreen
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
   Title           =   "Untitled"
   Top             =   0
   Begin MobileButton Button1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Button1, 1, <Parent>, 1, False, +1.00, 4, 1, *kStdGapCtlToViewH, , True
      AutoLayout      =   Button1, 7, , 0, False, +1.00, 4, 1, 100, , True
      AutoLayout      =   Button1, 3, TopLayoutGuide, 4, False, +1.00, 4, 1, *kStdControlGapV, , True
      AutoLayout      =   Button1, 8, , 0, False, +1.00, 4, 1, 30, , True
      Caption         =   "Click Here"
      CaptionColor    =   &c007AFF00
      ControlCount    =   0
      Enabled         =   True
      Height          =   30
      Left            =   20
      LockedInPosition=   False
      Scope           =   0
      TextFont        =   ""
      TextSize        =   0
      TintColor       =   &c000000
      Top             =   73
      Visible         =   True
      Width           =   100
   End
   Begin MobileButton Button2
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Button2, 1, <Parent>, 1, False, +1.00, 4, 1, 62, , True
      AutoLayout      =   Button2, 7, , 0, False, +1.00, 4, 1, 100, , True
      AutoLayout      =   Button2, 3, <Parent>, 3, False, +1.00, 4, 1, 472, , True
      AutoLayout      =   Button2, 8, , 0, False, +1.00, 4, 1, 30, , True
      Caption         =   "TopRight"
      CaptionColor    =   &c007AFF00
      ControlCount    =   0
      Enabled         =   True
      Height          =   30
      Left            =   62
      LockedInPosition=   False
      Scope           =   0
      TextFont        =   ""
      TextSize        =   0
      TintColor       =   &c000000
      Top             =   472
      Visible         =   True
      Width           =   100
   End
   Begin MobileButton Button3
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Button3, 1, Button2, 1, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   Button3, 7, , 0, False, +1.00, 4, 1, 100, , True
      AutoLayout      =   Button3, 8, , 0, False, +1.00, 4, 1, 30, , True
      AutoLayout      =   Button3, 3, <Parent>, 3, False, +1.00, 4, 1, 285, , True
      Caption         =   "BottomRight"
      CaptionColor    =   &c007AFF00
      ControlCount    =   0
      Enabled         =   True
      Height          =   30
      Left            =   62
      LockedInPosition=   False
      Scope           =   0
      TextFont        =   ""
      TextSize        =   0
      TintColor       =   &c000000
      Top             =   285
      Visible         =   True
      Width           =   100
   End
   Begin MobileButton Button4
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Button4, 1, <Parent>, 1, False, +1.00, 4, 1, 185, , True
      AutoLayout      =   Button4, 7, , 0, False, +1.00, 4, 1, 100, , True
      AutoLayout      =   Button4, 3, <Parent>, 3, False, +1.00, 4, 1, 214, , True
      AutoLayout      =   Button4, 8, , 0, False, +1.00, 4, 1, 30, , True
      Caption         =   "BottomLeft"
      CaptionColor    =   &c007AFF00
      ControlCount    =   0
      Enabled         =   True
      Height          =   30
      Left            =   185
      LockedInPosition=   False
      Scope           =   0
      TextFont        =   ""
      TextSize        =   0
      TintColor       =   &c000000
      Top             =   214
      Visible         =   True
      Width           =   100
   End
End
#tag EndMobileScreen

#tag WindowCode
	#tag Event
		Sub Opening()
		  
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h21
		Private Sub ReplaceConstraints()
		  // convert the Xojo constraints into NSLayoutConstraints
		  // By default they all have a priority of 1000 (Required) 
		  // which we do not want, so we're converting them all
		  // to a priority of 1 (almost ignored)
		  Self.ConvertConstraintsForAllControls(1)
		  
		  // Get the safe area boundaries
		  Dim safeArea As SOSLayoutGuide = Self.SafeAreaLayoutGuide
		  
		  // Add the constraints we need to set up the grid
		  Self.AddConstraint(button1.LeftAnchor.constraintEqualToAnchor(Self.LeftAnchor, 12))
		  Self.AddConstraint(button1.TopAnchor.constraintEqualToAnchor(safeArea.TopAnchor, 12))
		  
		  Self.AddConstraint(button2.LeftAnchor.constraintEqualToAnchor(button1.RightAnchor, 12))
		  Self.AddConstraint(button2.TopAnchor.constraintEqualToAnchor(button1.TopAnchor))
		  
		  Self.AddConstraint(button3.RightAnchor.constraintEqualToAnchor(button2.RightAnchor))
		  Self.AddConstraint(button3.TopAnchor.constraintEqualToAnchor(button2.BottomAnchor, 12))
		  
		  Self.AddConstraint(button4.RightAnchor.constraintEqualToAnchor(button3.LeftAnchor, -12))
		  Self.AddConstraint(button4.TopAnchor.constraintEqualToAnchor(button3.TopAnchor))
		  
		  // make the first button 100px wide
		  Self.AddConstraint(New SOSLayoutConstraint(button1.Handle, SOSLayoutConstraint.LayoutAttributes.Width, SOSLayoutConstraint.relations.Equal, 100))
		  
		  // make the rest the same size
		  Self.AddConstraint(New SOSLayoutConstraint(button2.handle, button1.handle, SOSLayoutConstraint.LayoutAttributes.Width))
		  Self.AddConstraint(New SOSLayoutConstraint(button3.handle, button1.handle, SOSLayoutConstraint.LayoutAttributes.Width))
		  Self.AddConstraint(New SOSLayoutConstraint(button4.handle, button1.handle, SOSLayoutConstraint.LayoutAttributes.Width))
		  
		  
		  
		  Self.EndAnimation // this is needed for the animation function
		  
		End Sub
	#tag EndMethod


#tag EndWindowCode

#tag Events Button1
	#tag Event
		Sub Pressed()
		  StartAnimation(.5, AddressOf replaceconstraints)
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
