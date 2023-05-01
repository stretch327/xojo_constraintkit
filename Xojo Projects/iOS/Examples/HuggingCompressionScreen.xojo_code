#tag MobileScreen
Begin MobileScreen HuggingCompressionScreen
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
   Title           =   "Hugging & Compression"
   Top             =   0
   Begin MobileLabel Label1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Alignment       =   2
      AutoLayout      =   Label1, 11, TextField1, 11, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   Label1, 8, , 0, False, +1.00, 4, 1, 30, , True
      AutoLayout      =   Label1, 1, <Parent>, 1, False, +1.00, 4, 1, *kStdGapCtlToViewH, , True
      AutoLayout      =   Label1, 7, , 0, False, +1.00, 4, 1, 89, , True
      ControlCount    =   0
      Enabled         =   True
      Height          =   30
      Left            =   20
      LineBreakMode   =   2
      LockedInPosition=   False
      Scope           =   2
      Text            =   "#kFirstName"
      TextColor       =   &c000000
      TextFont        =   ""
      TextSize        =   0
      TintColor       =   &c000000
      Top             =   73
      Visible         =   True
      Width           =   89
   End
   Begin MobileLabel Label2
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Alignment       =   2
      AutoLayout      =   Label2, 1, Label1, 1, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   Label2, 7, Label1, 7, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   Label2, 8, , 0, False, +1.00, 4, 1, 30, , True
      AutoLayout      =   Label2, 11, TextField2, 11, False, +1.00, 4, 1, 0, , True
      ControlCount    =   0
      Enabled         =   True
      Height          =   30
      Left            =   20
      LineBreakMode   =   2
      LockedInPosition=   False
      Scope           =   2
      Text            =   "#kLastName"
      TextColor       =   &c000000
      TextFont        =   ""
      TextSize        =   0
      TintColor       =   &c000000
      Top             =   151
      Visible         =   True
      Width           =   89
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
      AutoLayout      =   TextField1, 2, <Parent>, 2, False, +1.00, 4, 1, -*kStdGapCtlToViewH, , True
      AutoLayout      =   TextField1, 3, TopLayoutGuide, 4, False, +1.00, 4, 1, *kStdControlGapV, , True
      BorderStyle     =   3
      ControlCount    =   0
      Enabled         =   True
      Height          =   31
      Hint            =   ""
      InputType       =   0
      Left            =   117
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
      Width           =   183
   End
   Begin MobileTextField TextField2
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Alignment       =   0
      AllowAutoCorrection=   False
      AllowSpellChecking=   False
      AutoCapitalizationType=   0
      AutoLayout      =   TextField2, 8, , 0, True, +1.00, 4, 1, 31, , True
      AutoLayout      =   TextField2, 1, TextField1, 1, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   TextField2, 2, TextField1, 2, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   TextField2, 3, TextField3, 4, False, +1.00, 4, 1, *kStdControlGapV, , True
      BorderStyle     =   3
      ControlCount    =   0
      Enabled         =   True
      Height          =   31
      Hint            =   ""
      InputType       =   0
      Left            =   117
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
      Top             =   151
      Visible         =   True
      Width           =   183
   End
   Begin MobileLabel Label3
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Alignment       =   2
      AutoLayout      =   Label3, 11, TextField3, 11, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   Label3, 8, , 0, False, +1.00, 4, 1, 30, , True
      AutoLayout      =   Label3, 1, Label1, 1, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   Label3, 7, Label1, 7, False, +1.00, 4, 1, 0, , True
      ControlCount    =   0
      Enabled         =   True
      Height          =   30
      Left            =   20
      LineBreakMode   =   2
      LockedInPosition=   False
      Scope           =   2
      Text            =   "#kMiddleInitial"
      TextColor       =   &c000000
      TextFont        =   ""
      TextSize        =   0
      TintColor       =   &c000000
      Top             =   112
      Visible         =   True
      Width           =   89
   End
   Begin MobileTextField TextField3
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Alignment       =   0
      AllowAutoCorrection=   False
      AllowSpellChecking=   False
      AutoCapitalizationType=   0
      AutoLayout      =   TextField3, 8, , 0, True, +1.00, 4, 1, 31, , True
      AutoLayout      =   TextField3, 1, TextField1, 1, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   TextField3, 2, TextField1, 2, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   TextField3, 3, TextField1, 4, False, +1.00, 4, 1, *kStdControlGapV, , True
      BorderStyle     =   3
      ControlCount    =   0
      Enabled         =   True
      Height          =   31
      Hint            =   ""
      InputType       =   0
      Left            =   117
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
      Width           =   183
   End
   Begin MobileSegmentedButton SegmentedButton1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   SegmentedButton1, 4, BottomLayoutGuide, 3, False, +1.00, 4, 1, -*kStdControlGapV, , True
      AutoLayout      =   SegmentedButton1, 8, , 0, True, +1.00, 4, 1, 29, , True
      AutoLayout      =   SegmentedButton1, 1, <Parent>, 1, False, +1.00, 4, 1, *kStdGapCtlToViewH, , True
      AutoLayout      =   SegmentedButton1, 2, <Parent>, 2, False, +1.00, 4, 1, -*kStdGapCtlToViewH, , True
      ControlCount    =   0
      Enabled         =   True
      Height          =   29
      Left            =   20
      LockedInPosition=   False
      Scope           =   2
      SegmentCount    =   0
      Segments        =   "English\n\nFalse\rFrench\n\nFalse\rGerman\n\nFalse\rSpanish\n\nFalse"
      SelectedSegmentIndex=   0
      TintColor       =   &c000000
      Top             =   531
      Visible         =   True
      Width           =   280
   End
   Begin MobileSlider Slider1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Slider1, 8, , 0, False, +1.00, 4, 1, 23, , True
      AutoLayout      =   Slider1, 1, <Parent>, 1, False, +1.00, 4, 1, *kStdGapCtlToViewH, , True
      AutoLayout      =   Slider1, 2, PriorityLabel, 1, False, +1.00, 4, 1, -*kStdControlGapH, , True
      AutoLayout      =   Slider1, 3, ConstraintPrioritiesLabel, 4, False, +1.00, 4, 1, *kStdControlGapV, , True
      ControlCount    =   0
      Enabled         =   True
      Height          =   23
      Left            =   20
      LockedInPosition=   False
      MaximumValue    =   200.0
      MinimumValue    =   0.0
      Scope           =   2
      TintColor       =   &c000000
      Top             =   307
      Value           =   100.0
      Visible         =   True
      Width           =   225
   End
   Begin MobileLabel PriorityLabel
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Alignment       =   1
      AutoLayout      =   PriorityLabel, 8, Slider1, 8, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   PriorityLabel, 2, SegmentedButton1, 2, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   PriorityLabel, 3, Slider1, 3, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   PriorityLabel, 7, , 0, False, +1.00, 4, 1, 47, , True
      ControlCount    =   0
      Enabled         =   True
      Height          =   23
      Left            =   253
      LineBreakMode   =   0
      LockedInPosition=   False
      Scope           =   2
      Text            =   "1000"
      TextColor       =   &c000000
      TextFont        =   ""
      TextSize        =   0
      TintColor       =   &c000000
      Top             =   307
      Visible         =   True
      Width           =   47
   End
   Begin MobileLabel ConstraintPrioritiesLabel
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Alignment       =   0
      AutoLayout      =   ConstraintPrioritiesLabel, 8, , 0, False, +1.00, 4, 1, 30, , True
      AutoLayout      =   ConstraintPrioritiesLabel, 1, Slider1, 1, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   ConstraintPrioritiesLabel, 2, Slider1, 2, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   ConstraintPrioritiesLabel, 10, <Parent>, 10, False, +1.00, 4, 1, 0, , True
      ControlCount    =   0
      Enabled         =   True
      Height          =   30
      Left            =   20
      LineBreakMode   =   0
      LockedInPosition=   False
      Scope           =   2
      Text            =   "Constraint Priorities"
      TextColor       =   &c000000
      TextFont        =   ""
      TextSize        =   0
      TintColor       =   &c000000
      Top             =   269
      Visible         =   True
      Width           =   225
   End
End
#tag EndMobileScreen

#tag WindowCode
	#tag Event
		Sub Opening()
		  FixConstraints
		  
		  // turn off wrapping and set number of lines to 1 for each of the labels
		  label1.LineBreakEnabled = False
		  label2.LineBreakEnabled = False
		  label3.LineBreakEnabled = False
		  
		  label1.NumberOfLines = 1
		  label2.NumberOfLines = 1
		  label3.NumberOfLines = 1
		  
		  // update the value label to match the slider
		  SliderAdjusted
		  
		  // make sure everything starts out set to english
		  UpdateLabels("en")
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h21
		Private Sub FixConstraints()
		  // add three constraints for the baselines between the text fields and the labels
		  TextField1.FirstBaselineAnchor.constraintEqualToAnchor(label1.FirstBaselineAnchor).Active = True
		  TextField2.FirstBaselineAnchor.constraintEqualToAnchor(label2.FirstBaselineAnchor).active = True
		  TextField3.FirstBaselineAnchor.constraintEqualToAnchor(label3.FirstBaselineAnchor).Active = True
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub SliderAdjusted()
		  Dim n As Double = Floor(Slider1.Value)*5
		  If n < 1000 Then n = n + 1 // don't use the exact numbers because that just causes issues
		  PriorityLabel.Text = n.ToString("0")
		  UpdateConstraints
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub UpdateConstraints()
		  Static alreadyChanging As Boolean
		  If Not alreadyChanging Then
		    alreadyChanging = True
		    // first we copy the existing constraints to the new priority
		    Self.ConvertConstraintsForAllControls(PriorityLabel.Text.ToInteger)
		    
		    // first we get the intrinsic size for each of the labels
		    
		    Dim neededWidth As Double
		    Dim ics1 As Double = label1.IntrinsicContentSize.Width
		    Dim ics2 As Double = label2.IntrinsicContentSize.Width
		    Dim ics3 As Double = label3.IntrinsicContentSize.Width
		    
		    neededWidth = Max(ics1, ics2, ics3)
		    
		    // Remove the previous width constraint if it exists
		    If label1WidthConstraint<>Nil Then
		      label1WidthConstraint.Active = False
		      label1WidthConstraint = Nil
		    End If
		    
		    // add a new constraint for Label1 setting its width to the largest intrinsic width we found
		    label1WidthConstraint = New SOSLayoutConstraint(label1.Handle, SOSLayoutConstraint.LayoutAttributes.Width, SOSLayoutConstraint.relations.Equal, Nil, SOSLayoutconstraint.LayoutAttributes.Absolute, 1, neededWidth)
		    label1WidthConstraint.active = True
		    
		    alreadyChanging = False
		  End If
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub UpdateLabels(languagecode as String)
		  // Remove the previous width constraint if it exists
		  If label1WidthConstraint<>Nil Then
		    label1WidthConstraint.Active = False
		    label1WidthConstraint = Nil
		  End If
		  
		  // Update the text in each of the labels
		  label1.Text = kFirstName(languagecode.ToText)
		  label2.Text = kLastName(languagecode.ToText)
		  label3.Text = kMiddleInitial(languagecode.ToText)
		  
		  TextField1.Hint = label1.Text
		  TextField2.Hint = label2.Text
		  TextField3.Hint = label3.Text
		  
		  // tell the layout system that the intrinsic content sizes need to be recalculated
		  // so the measurements will be right when we update the constraints
		  label1.InvalidateIntrinsicContentSize
		  label2.InvalidateIntrinsicContentSize
		  label3.InvalidateIntrinsicContentSize
		  
		  UpdateConstraints
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h21
		Private label1WidthConstraint As SOSLayoutConstraint
	#tag EndProperty


#tag EndWindowCode

#tag Events SegmentedButton1
	#tag Event
		Sub Opening()
		  me.SelectedSegmentIndex = 0
		End Sub
	#tag EndEvent
	#tag Event
		Sub Pressed(segmentedIndex As Integer)
		  Dim langarr() As String = Array("en", "fr", "de", "es")
		  UpdateLabels(langarr(segmentedIndex))
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Slider1
	#tag Event
		Sub ValueChanged()
		  SliderAdjusted
		End Sub
	#tag EndEvent
	#tag Event
		Sub Opening()
		  
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
