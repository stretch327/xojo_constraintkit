#tag MobileScreen
Begin MobileScreen ExerciserScreen
   BackButtonCaption=   ""
   Compatibility   =   ""
   ControlCount    =   0
   Device = 1
   HasNavigationBar=   True
   LargeTitleDisplayMode=   2
   Left            =   0
   Orientation = 0
   TabBarVisible   =   True
   TabIcon         =   0
   TintColor       =   &c00000000
   Title           =   "Untitled"
   Top             =   0
   Begin MobileTextField ZipField
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Alignment       =   0
      AllowAutoCorrection=   False
      AllowSpellChecking=   False
      AutoCapitalizationType=   0
      AutoLayout      =   ZipField, 11, ZipLabel, 11, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   ZipField, 8, , 0, True, +1.00, 4, 1, 31, , True
      AutoLayout      =   ZipField, 1, StateField, 1, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   ZipField, 3, StateField, 4, False, +1.00, 4, 1, *kStdControlGapV, , True
      AutoLayout      =   ZipField, 7, , 0, False, +1.00, 4, 1, 172, , True
      BorderStyle     =   3
      ControlCount    =   0
      Enabled         =   True
      Height          =   29
      Hint            =   "Zip Code"
      InputType       =   0
      Left            =   128
      LockedInPosition=   False
      Password        =   False
      ReadOnly        =   False
      ReturnCaption   =   0
      Scope           =   2
      Text            =   ""
      TextColor       =   &c000000
      TextFont        =   ""
      TextSize        =   0
      TintColor       =   &c000000
      Top             =   264
      Visible         =   True
      Width           =   172
   End
   Begin MobileLabel ZipLabel
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Alignment       =   2
      AutoLayout      =   ZipLabel, 1, StateLabel, 1, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   ZipLabel, 7, , 0, False, +1.00, 4, 1, 100, , True
      AutoLayout      =   ZipLabel, 3, StateLabel, 4, False, +1.00, 4, 1, *kStdControlGapV, , True
      AutoLayout      =   ZipLabel, 8, , 0, False, +1.00, 4, 1, 30, , True
      ControlCount    =   0
      Enabled         =   True
      Height          =   30
      Left            =   20
      LineBreakMode   =   0
      LockedInPosition=   False
      Scope           =   2
      Text            =   "Zip"
      TextColor       =   &c000000
      TextFont        =   ""
      TextSize        =   0
      TintColor       =   &c000000
      Top             =   263
      Visible         =   True
      Width           =   100
   End
   Begin MobileTextField StateField
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Alignment       =   0
      AllowAutoCorrection=   False
      AllowSpellChecking=   False
      AutoCapitalizationType=   0
      AutoLayout      =   StateField, 11, StateLabel, 11, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   StateField, 8, , 0, True, +1.00, 4, 1, 31, , True
      AutoLayout      =   StateField, 1, <Parent>, 1, False, +1.00, 4, 1, 128, , True
      AutoLayout      =   StateField, 3, CityField, 4, False, +1.00, 4, 1, *kStdControlGapV, , True
      AutoLayout      =   StateField, 7, , 0, False, +1.00, 4, 1, 172, , True
      BorderStyle     =   3
      ControlCount    =   0
      Enabled         =   True
      Height          =   31
      Hint            =   "State"
      InputType       =   0
      Left            =   128
      LockedInPosition=   False
      Password        =   False
      ReadOnly        =   False
      ReturnCaption   =   0
      Scope           =   2
      Text            =   ""
      TextColor       =   &c000000
      TextFont        =   ""
      TextSize        =   0
      TintColor       =   &c000000
      Top             =   225
      Visible         =   True
      Width           =   172
   End
   Begin MobileLabel StateLabel
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Alignment       =   2
      AutoLayout      =   StateLabel, 1, CityLabel, 1, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   StateLabel, 7, , 0, False, +1.00, 4, 1, 100, , True
      AutoLayout      =   StateLabel, 3, CityLabel, 4, False, +1.00, 4, 1, *kStdControlGapV, , True
      AutoLayout      =   StateLabel, 8, , 0, False, +1.00, 4, 1, 30, , True
      ControlCount    =   0
      Enabled         =   True
      Height          =   30
      Left            =   20
      LineBreakMode   =   0
      LockedInPosition=   False
      Scope           =   2
      Text            =   "State"
      TextColor       =   &c000000
      TextFont        =   ""
      TextSize        =   0
      TintColor       =   &c000000
      Top             =   225
      Visible         =   True
      Width           =   100
   End
   Begin MobileTextField CityField
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Alignment       =   0
      AllowAutoCorrection=   False
      AllowSpellChecking=   False
      AutoCapitalizationType=   0
      AutoLayout      =   CityField, 8, , 0, True, +1.00, 4, 1, 31, , True
      AutoLayout      =   CityField, 1, <Parent>, 1, False, +1.00, 4, 1, 128, , True
      AutoLayout      =   CityField, 3, Addr2Field, 4, False, +1.00, 4, 1, *kStdControlGapV, , True
      AutoLayout      =   CityField, 7, , 0, False, +1.00, 4, 1, 172, , True
      BorderStyle     =   3
      ControlCount    =   0
      Enabled         =   True
      Height          =   31
      Hint            =   "City Name"
      InputType       =   0
      Left            =   128
      LockedInPosition=   False
      Password        =   False
      ReadOnly        =   False
      ReturnCaption   =   0
      Scope           =   2
      Text            =   ""
      TextColor       =   &c000000
      TextFont        =   ""
      TextSize        =   0
      TintColor       =   &c000000
      Top             =   186
      Visible         =   True
      Width           =   172
   End
   Begin MobileLabel CityLabel
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Alignment       =   2
      AutoLayout      =   CityLabel, 1, Addr2Label, 1, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   CityLabel, 7, , 0, False, +1.00, 4, 1, 100, , True
      AutoLayout      =   CityLabel, 3, Addr2Label, 4, False, +1.00, 4, 1, *kStdControlGapV, , True
      AutoLayout      =   CityLabel, 8, , 0, False, +1.00, 4, 1, 30, , True
      ControlCount    =   0
      Enabled         =   True
      Height          =   30
      Left            =   20
      LineBreakMode   =   0
      LockedInPosition=   False
      Scope           =   2
      Text            =   "City"
      TextColor       =   &c000000
      TextFont        =   ""
      TextSize        =   0
      TintColor       =   &c000000
      Top             =   187
      Visible         =   True
      Width           =   100
   End
   Begin MobileTextField Addr2Field
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Alignment       =   0
      AllowAutoCorrection=   False
      AllowSpellChecking=   False
      AutoCapitalizationType=   0
      AutoLayout      =   Addr2Field, 1, Addr1Field, 1, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   Addr2Field, 3, Addr1Field, 4, False, +1.00, 4, 1, *kStdControlGapV, , True
      AutoLayout      =   Addr2Field, 7, , 0, False, +1.00, 4, 1, 172, , True
      BorderStyle     =   3
      ControlCount    =   0
      Enabled         =   True
      Height          =   29
      Hint            =   "Address 2"
      InputType       =   0
      Left            =   128
      LockedInPosition=   False
      Password        =   False
      ReadOnly        =   False
      ReturnCaption   =   0
      Scope           =   2
      Text            =   ""
      TextColor       =   &c000000
      TextFont        =   ""
      TextSize        =   0
      TintColor       =   &c000000
      Top             =   149
      Visible         =   True
      Width           =   172
   End
   Begin MobileLabel Addr2Label
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Alignment       =   2
      AutoLayout      =   Addr2Label, 1, Addr1Label, 1, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   Addr2Label, 7, , 0, False, +1.00, 4, 1, 100, , True
      AutoLayout      =   Addr2Label, 3, Addr1Label, 4, False, +1.00, 4, 1, *kStdControlGapV, , True
      AutoLayout      =   Addr2Label, 8, , 0, False, +1.00, 4, 1, 30, , True
      ControlCount    =   0
      Enabled         =   True
      Height          =   30
      Left            =   20
      LineBreakMode   =   0
      LockedInPosition=   False
      Scope           =   2
      Text            =   "Address 2"
      TextColor       =   &c000000
      TextFont        =   ""
      TextSize        =   0
      TintColor       =   &c000000
      Top             =   149
      Visible         =   True
      Width           =   100
   End
   Begin MobileTextField Addr1Field
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Alignment       =   0
      AllowAutoCorrection=   False
      AllowSpellChecking=   False
      AutoCapitalizationType=   0
      AutoLayout      =   Addr1Field, 11, Addr1Label, 11, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   Addr1Field, 8, , 0, True, +1.00, 4, 1, 31, , True
      AutoLayout      =   Addr1Field, 1, CityField, 1, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   Addr1Field, 3, NameField, 4, False, +1.00, 4, 1, *kStdControlGapV, , True
      AutoLayout      =   Addr1Field, 7, , 0, False, +1.00, 4, 1, 172, , True
      BorderStyle     =   3
      ControlCount    =   0
      Enabled         =   True
      Height          =   29
      Hint            =   "Address 1"
      InputType       =   0
      Left            =   128
      LockedInPosition=   False
      Password        =   False
      ReadOnly        =   False
      ReturnCaption   =   0
      Scope           =   2
      Text            =   ""
      TextColor       =   &c000000
      TextFont        =   ""
      TextSize        =   0
      TintColor       =   &c000000
      Top             =   112
      Visible         =   True
      Width           =   172
   End
   Begin MobileLabel Addr1Label
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Alignment       =   2
      AutoLayout      =   Addr1Label, 8, , 0, False, +1.00, 4, 1, 30, , True
      AutoLayout      =   Addr1Label, 1, NameLabel, 1, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   Addr1Label, 3, NameLabel, 4, False, +1.00, 4, 2, *kStdControlGapV, , True
      AutoLayout      =   Addr1Label, 7, , 0, False, +1.00, 4, 1, 100, , True
      ControlCount    =   0
      Enabled         =   True
      Height          =   30
      Left            =   20
      LineBreakMode   =   0
      LockedInPosition=   False
      Scope           =   2
      Text            =   "Address 1"
      TextColor       =   &c000000
      TextFont        =   ""
      TextSize        =   0
      TintColor       =   &c000000
      Top             =   111
      Visible         =   True
      Width           =   100
   End
   Begin MobileLabel NameLabel
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Alignment       =   2
      AutoLayout      =   NameLabel, 11, NameField, 11, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   NameLabel, 8, , 0, False, +1.00, 4, 1, 30, , True
      AutoLayout      =   NameLabel, 1, <Parent>, 1, False, +1.00, 4, 1, *kStdGapCtlToViewH, , True
      AutoLayout      =   NameLabel, 7, , 0, False, +1.00, 4, 1, 100, , True
      ControlCount    =   0
      Enabled         =   True
      Height          =   30
      Left            =   20
      LineBreakMode   =   0
      LockedInPosition=   False
      Scope           =   2
      Text            =   "Name"
      TextColor       =   &c000000
      TextFont        =   ""
      TextSize        =   0
      TintColor       =   &c000000
      Top             =   73
      Visible         =   True
      Width           =   100
   End
   Begin MobileTextField NameField
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Alignment       =   0
      AllowAutoCorrection=   False
      AllowSpellChecking=   False
      AutoCapitalizationType=   0
      AutoLayout      =   NameField, 8, , 0, True, +1.00, 4, 1, 31, , True
      AutoLayout      =   NameField, 1, NameLabel, 2, False, +1.00, 4, 1, *kStdControlGapH, , True
      AutoLayout      =   NameField, 2, <Parent>, 2, False, +1.00, 4, 1, -*kStdGapCtlToViewH, , True
      AutoLayout      =   NameField, 3, TopLayoutGuide, 4, False, +1.00, 4, 1, *kStdControlGapV, , True
      BorderStyle     =   3
      ControlCount    =   0
      Enabled         =   True
      Height          =   31
      Hint            =   "Full Name"
      InputType       =   0
      Left            =   128
      LockedInPosition=   False
      Password        =   False
      ReadOnly        =   False
      ReturnCaption   =   0
      Scope           =   2
      Text            =   ""
      TextColor       =   &c000000
      TextFont        =   ""
      TextSize        =   0
      TintColor       =   &c000000
      Top             =   73
      Visible         =   True
      Width           =   172
   End
End
#tag EndMobileScreen

#tag WindowCode
	#tag Event
		Sub Opening()
		  // // Convert all constraints from iOSLayoutConstraints to SOSLayoutConstraints,
		  // // with a priority of 750 instead of 1000 so they can be changed at runtime
		  // Self.ConvertConstraintsForAllControls(990)
		  // 
		  // // add a baseline anchor between TextField1 and Label1
		  // label1.FirstBaselineAnchor.ConstraintEqualToAnchor(TextField1.FirstBaselineAnchor).Active = True
		  // 
		  // // fix the label so the baselines will line up
		  // label1.NumberOfLines = 1
		  // label1.LineBreakEnabled = False
		  // 
		  // 
		  // // create new leading/trailing constraints
		  // Self.TrailingAnchor.ConstraintEqualToSystemSpacingAfterAnchor(TextField1.TrailingAnchor).Active = True
		  // TextField1.LeadingAnchor.ConstraintEqualToSystemSpacingAfterAnchor(label1.TrailingAnchor).Active = True
		  // label1.LeadingAnchor.ConstraintEqualToSystemSpacingAfterAnchor(Self.LeadingAnchor).Active = True
		  // 
		  // label1.RemoveHeightConstraints
		  // label1.RemoveWidthConstraints
		  // 
		  // label1.HuggingPriorityForAxis(axis.Horizontal) = 251
		  // TextField1.HuggingPriorityForAxis(axis.Horizontal) = 250
		  
		  MakeConstraints
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h21
		Private Sub MakeConstraints()
		  // first, make a lookup table for the controls
		  Dim d As New Dictionary
		  Dim uiControls() As MobileUIControl
		  For Each ctl As Object In Self.controls
		    If ctl IsA MobileUIControl Then
		      uiControls.add MobileUIControl(ctl)
		      d.Value(MobileUIControl(ctl).name) = MobileUIControl(ctl)
		    End If
		  Next
		  
		  // convert xojo constraints into the same thing but at 990 so we have a little leeway
		  Self.ConvertConstraintsForAllControls(990)
		  
		  Dim firstLabel As MobileLabel
		  Dim firstField As MobileTextField
		  
		  For Each ctl As MobileUIControl In uiControls
		    Dim fieldGroup As String
		    If ctl IsA MobileLabel Then
		      fieldGroup = ctl.Name.Replace("Label","")
		      // add a leading anchor
		      ctl.LeadingAnchor.ConstraintEqualToSystemSpacingAfterAnchor(Self.LeadingAnchor).Active = True
		      
		      // tell the label it only has a single line of data in it and prevent line breaks (so our baseline calcs are correct)
		      MobileLabel(ctl).NumberOfLines = 1
		      MobileLabel(ctl).LineBreakEnabled = False
		      
		      // remove height and width constraints
		      ctl.RemoveWidthConstraints
		      ctl.RemoveHeightConstraints
		      
		      // create intrinsic-relative constraints
		      ctl.WidthAnchor.ConstraintGreaterThanOrEqualToConstant(ctl.IntrinsicContentSize.Width).Active = True
		      ctl.HeightAnchor.ConstraintEqualToConstant(ctl.IntrinsicContentSize.Height).Active = True
		      
		      // set hugging higher than the fields so it'll shrink when the fields stay large
		      ctl.HuggingPriorityForAxis(axis.Horizontal) = 260
		      
		      If firstLabel = Nil Then
		        firstLabel = MobileLabel(ctl)
		      Else
		        ctl.WidthAnchor.ConstraintEqualToAnchor(firstLabel.WidthAnchor).Active = True
		      End If
		    End If
		    
		    If ctl IsA MobileTextField Then
		      fieldGroup = ctl.name.Replace("Field", "")
		      // trailing anchor on the text fields
		      Self.TrailingAnchor.ConstraintEqualToSystemSpacingAfterAnchor(ctl.TrailingAnchor).Active = True
		      
		      // things that relate to the matching label
		      Dim label As MobileLabel = d.Value(fieldGroup + "Label")
		      If label<>Nil Then
		        // leading anchor to the corresponding label
		        ctl.LeadingAnchor.ConstraintEqualToSystemSpacingAfterAnchor(label.TrailingAnchor).Active = True
		        
		        // Create a baseline constraint to the matching label
		        ctl.FirstBaselineAnchor.ConstraintEqualToAnchor(label.FirstBaselineAnchor).Active = True
		      End If
		      
		      // remove height and width constraints
		      ctl.RemoveWidthConstraints
		      ctl.RemoveHeightConstraints
		      
		      // create intrinsic-relative constraints
		      ctl.WidthAnchor.ConstraintGreaterThanOrEqualToConstant(ctl.IntrinsicContentSize.Width).Active = True
		      ctl.HeightAnchor.ConstraintEqualToConstant(ctl.IntrinsicContentSize.Height).Active = True
		      
		      // set hugging lower than the fields so it'll stay large when the labels shrink
		      ctl.HuggingPriorityForAxis(axis.Horizontal) = 250
		      
		      If firstField = Nil Then
		        firstField = MobileTextField(ctl)
		      Else
		        ctl.WidthAnchor.ConstraintEqualToAnchor(firstField.WidthAnchor).Active = True
		      End If
		    End If
		  Next
		End Sub
	#tag EndMethod


#tag EndWindowCode

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
