#tag MobileContainer
Begin MobileContainer NewsContainer
   AccessibilityHint=   ""
   AccessibilityLabel=   ""
   Compatibility   =   ""
   Device = 1
   Height          =   174
   Left            =   0
   Orientation = 0
   Top             =   0
   Visible         =   True
   Width           =   320
   Begin MobileRectangle background
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   background, 4, <Parent>, 4, False, +1.00, 4, 1, -8, , True
      AutoLayout      =   background, 1, <Parent>, 1, False, +1.00, 4, 1, 8, , True
      AutoLayout      =   background, 2, <Parent>, 2, False, +1.00, 4, 1, -8, , True
      AutoLayout      =   background, 3, <Parent>, 3, False, +1.00, 4, 1, 8, , True
      BorderColor     =   &c000000
      BorderThickness =   0.0
      ControlCount    =   0
      CornerSize      =   16.0
      Enabled         =   True
      FillColor       =   NewsStoryBackground
      Height          =   158
      Left            =   8
      LockedInPosition=   False
      Scope           =   2
      TintColor       =   &c000000
      Top             =   8
      Visible         =   True
      Width           =   304
      Begin MobileRectangle Rectangle1
         AccessibilityHint=   ""
         AccessibilityLabel=   ""
         AutoLayout      =   Rectangle1, 4, <Parent>, 4, False, +1.00, 4, 1, -*kStdGapCtlToViewV, , True
         AutoLayout      =   Rectangle1, 2, <Parent>, 2, False, +1.00, 4, 1, -*kStdGapCtlToViewH, , True
         AutoLayout      =   Rectangle1, 3, <Parent>, 3, False, +1.00, 4, 1, *kStdGapCtlToViewV, , True
         AutoLayout      =   Rectangle1, 7, Rectangle1, 8, False, +1.00, 4, 1, 0, , True
         BorderColor     =   &c000000
         BorderThickness =   0.0
         ControlCount    =   0
         CornerSize      =   12.0
         Enabled         =   True
         FillColor       =   &c000000
         Height          =   134
         Left            =   166
         LockedInPosition=   False
         PanelIndex      =   -1
         Parent          =   "background"
         Scope           =   0
         TintColor       =   &c000000
         Top             =   20
         Visible         =   True
         Width           =   134
      End
   End
   Begin MobileLabel HeadlineLbl
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Alignment       =   0
      AutoLayout      =   HeadlineLbl, 1, <Parent>, 1, False, +1.00, 4, 1, *kStdGapCtlToViewH, , True
      AutoLayout      =   HeadlineLbl, 2, Rectangle1, 1, False, +1.00, 4, 1, -*kStdControlGapH, , True
      AutoLayout      =   HeadlineLbl, 3, <Parent>, 3, False, +1.00, 4, 1, 20, , True
      AutoLayout      =   HeadlineLbl, 8, , 0, False, +1.00, 4, 1, 30, , True
      ControlCount    =   0
      Enabled         =   True
      Height          =   30
      Left            =   20
      LineBreakMode   =   0
      LockedInPosition=   False
      Scope           =   2
      Text            =   "News Story"
      TextColor       =   &c000000
      TextFont        =   "System Bold		"
      TextSize        =   0
      TintColor       =   &c000000
      Top             =   20
      Visible         =   True
      Width           =   138
   End
   Begin MobileLabel NewsCopyLbl
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Alignment       =   0
      AutoLayout      =   NewsCopyLbl, 4, <Parent>, 4, False, +1.00, 4, 0, -20, , True
      AutoLayout      =   NewsCopyLbl, 1, <Parent>, 1, False, +1.00, 4, 1, *kStdGapCtlToViewH, , True
      AutoLayout      =   NewsCopyLbl, 3, HeadlineLbl, 4, False, +1.00, 4, 1, *kStdControlGapV, , True
      AutoLayout      =   NewsCopyLbl, 7, , 0, False, +1.00, 4, 1, 138, , True
      ControlCount    =   0
      Enabled         =   True
      Height          =   96
      Left            =   20
      LineBreakMode   =   0
      LockedInPosition=   False
      Scope           =   2
      Text            =   "News Copy"
      TextColor       =   &c000000
      TextFont        =   "System		"
      TextSize        =   12
      TintColor       =   &c000000
      Top             =   58
      Visible         =   True
      Width           =   138
   End
End
#tag EndMobileContainer

#tag WindowCode
	#tag Method, Flags = &h0
		Sub MakeRandomStory()
		  Dim r As New Random
		  Select Case r.inrange(1,4)
		  Case 1
		    HeadlineLbl.Text = "Huffington Post"
		    NewsCopyLbl.Text = "Rep. Lauren Boebert lists what patriots should be willing to do and... it's something"
		    Rectangle1.FillColor = &cFFEEEE
		  Case 2
		    HeadlineLbl.Text = "NPR"
		    NewsCopyLbl.Text = "Federal prisons want inmates to pay victims before making phone calls or buying shoes"
		    Rectangle1.FillColor = &cFFFFEE
		  Case 3
		    HeadlineLbl.Text = "MSNBC"
		    NewsCopyLbl.Text = "David Rohde: Pencie is ""the most important Jan 6th witness"" in terms of Trump's mindset"
		    Rectangle1.FillColor = &cEEFFEE
		  Case 4
		    HeadlineLbl.Text = "NBC News"
		    NewsCopyLbl.Text = "New marijuana legislation would allow cannabis businesses access to banking services"
		    Rectangle1.FillColor = &cEEEEFF
		  End Select
		  
		  NewsCopyLbl.NumberOfLines = 0
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetContent(header as string, copy as string, icon as picture)
		  HeadlineLbl.Text = header
		  NewsCopyLbl.Text = copy
		  
		End Sub
	#tag EndMethod


#tag EndWindowCode

#tag ViewBehavior
	#tag ViewProperty
		Name="TintColor"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="ColorGroup"
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
		Name="ControlCount"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="AccessibilityHint"
		Visible=false
		Group="UI Control"
		InitialValue=""
		Type="String"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
	#tag ViewProperty
		Name="AccessibilityLabel"
		Visible=false
		Group="UI Control"
		InitialValue=""
		Type="String"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Enabled"
		Visible=true
		Group="UI Control"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Visible"
		Visible=true
		Group="UI Control"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Width"
		Visible=false
		Group=""
		InitialValue="320"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Height"
		Visible=false
		Group=""
		InitialValue="480"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
#tag EndViewBehavior
