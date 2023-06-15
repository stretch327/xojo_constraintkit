#tag Module
Protected Module AutolayoutExtensions
	#tag CompatibilityFlags = (TargetDesktop and (Target64Bit)) or  (TargetIOS and (Target64Bit))
	#tag Method, Flags = &h0, CompatibilityFlags = (TargetIOS and (Target64Bit))
		Sub AddConstraint(extends screen as MobileScreen, constraint as SOSLayoutConstraint)
		  // Adds an SOSLayoutConstraint to the MobileScreen or MobileUIControl
		  #If TargetIOS
		    
		    // - (void)addConstraint:(NSLayoutConstraint *)constraint;
		    Declare Sub addConstraint Lib "Foundation" Selector "addConstraint:" ( obj As ptr , constraint As Ptr )
		    
		    addConstraint(Screen.Handle, constraint.Handle)
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, CompatibilityFlags = (TargetIOS and (Target64Bit))
		Sub AddConstraint(extends control as MobileUIControl, constraint as SOSLayoutConstraint)
		  // Adds an SOSLayoutConstraint to the MobileScreen or MobileUIControl
		  #If TargetIOS
		    // - (void)addConstraint:(NSLayoutConstraint *)constraint;
		    Declare Sub addConstraint Lib "Foundation" Selector "addConstraint:" ( obj As ptr , constraint As Ptr )
		    
		    addConstraint(control.Handle, constraint.Handle)
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AddConstraints(extends view as MobileScreen, constraints() as SOSLayoutConstraint)
		  // Adds an array of SOSLayoutConstraints to the MobileScreen
		  For i As Integer = 0 To UBound(constraints)
		    constraints(i).Priority = DefaultPriority
		    view.AddConstraint(constraints(i))
		  Next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AddConstraints(extends view as MobileScreen, constraints() as SOSLayoutConstraint, priority as Double)
		  // Adds an array of SOSLayoutConstraints to the MobileScreen with a specific priority
		  
		  // throttle to valid values
		  priority = Min(Max(priority, 1.0), DefaultPriority)
		  
		  For i As Integer = 0 To UBound(constraints)
		    constraints(i).Priority = priority
		    view.AddConstraint(constraints(i))
		  Next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AddConstraints(extends view as MobileUIControl, constraints() as SOSLayoutConstraint)
		  // Adds an array of SOSLayoutConstraints to the MobileUIControl
		  
		  For i As Integer = 0 To UBound(constraints)
		    constraints(i).Priority = DefaultPriority
		    view.AddConstraint(constraints(i))
		  Next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AddConstraints(extends view as MobileUIControl, constraints() as SOSLayoutConstraint, priority as Double)
		  // Adds an array of SOSLayoutConstraints to the MobileUIControl with a specific priority
		  // throttle to valid values
		  priority = Min(Max(priority, 1.0), 1000.0)
		  
		  For i As Integer = 0 To UBound(constraints)
		    constraints(i).Priority = priority
		    view.AddConstraint(constraints(i))
		  Next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit))
		Sub AlignToLabel(extends ctl as DesktopUIControl, label as DesktopLabel)
		  // Creates leading constraint and either a baseline or top constraint between the controls and the label
		  
		  #If TargetMacOS
		    
		    Select Case ctl
		    Case IsA DesktopRadioButton
		      Return
		      
		    Case IsA DesktopTextField 
		      ctl.FirstBaselineAnchor.ConstraintEqualToAnchor(label.FirstBaselineAnchor, 1).Active = True
		      
		    Case IsA DesktopButton, IsA DesktopComboBox, IsA DesktopDateTimePicker, IsA DesktopPopupMenu
		      ctl.FirstBaselineAnchor.ConstraintEqualToAnchor(label.FirstBaselineAnchor, 2).Active = True
		      
		    Case IsA DesktopRadioButton, IsA DesktopCheckBox, IsA DesktopLabel
		      ctl.FirstBaselineAnchor.ConstraintEqualToAnchor(label.FirstBaselineAnchor).Active = True
		      
		    Case IsA DesktopRadioGroup
		      Declare Function subviews Lib "Foundation" Selector "subviews" (obj As ptr) As ptr
		      Declare Function objectAtIndex Lib "Foundation" Selector "objectAtIndex:" (obj As ptr, index As Integer) As ptr
		      
		      Dim sv As ptr = subviews(ctl.handle)
		      Dim firstview As ptr = objectAtIndex(sv, 0)
		      
		      Dim c As New SOSLayoutConstraint(firstview, SOSLayoutConstraint.LayoutAttributes.FirstBaseline, _
		      SOSLayoutConstraint.Relations.Equal, label.handle, SOSLayoutConstraint.LayoutAttributes.FirstBaseline, _
		      1.0, 2)
		      c.active = True 
		      
		    Case IsA DesktopTextArea
		      // this text component doesn't get special treatment because if it scrolled
		      // the label would move up with the first line in the text. We can however
		      // move the control down a pixel to get the alignment right.
		      ctl.TopAnchor.ConstraintEqualToAnchor(label.TopAnchor, 1).Active = True
		      
		    Case Else
		      ctl.TopAnchor.ConstraintEqualToAnchor(label.TopAnchor).Active = True
		      
		    End Select
		    
		    
		    Declare Sub setAlignment Lib "Foundation" Selector "setAlignment:" (obj As ptr, value As Integer)
		    If SystemIsRTL Then
		      setAlignment(label.Handle, 1)
		    Else
		      setAlignment(label.Handle, 3) 
		    End If
		    
		    label.UseIntrinsicWidth
		    ctl.LeadingAnchor.ConstraintEqualToSystemSpacingAfterAnchor(label.TrailingAnchor).Active = True
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function AttributeName(attr as SOSLayoutConstraint.LayoutAttributes) As String
		  #If TargetiOS
		    Select Case attr
		    Case SOSLayoutConstraint.LayoutAttributes.Absolute
		      Return "Absolute"
		    Case SOSLayoutConstraint.LayoutAttributes.Bottom
		      Return "Bottom"
		    Case SOSLayoutConstraint.LayoutAttributes.BottomMargin
		      Return "BottomMargin"
		    Case SOSLayoutConstraint.LayoutAttributes.CenterX
		      Return "CenterX"
		    Case SOSLayoutConstraint.LayoutAttributes.CenterXWithinMargins
		      Return "CenterXWithinMargins"
		    Case SOSLayoutConstraint.LayoutAttributes.CenterY
		      Return "CenterY"
		    Case SOSLayoutConstraint.LayoutAttributes.CenterYWithinMargins
		      Return "CenterYWithinMargins"
		    Case SOSLayoutConstraint.LayoutAttributes.FirstBaseline
		      Return "FirstBaseline"
		    Case SOSLayoutConstraint.LayoutAttributes.Height
		      Return "Height"
		    Case SOSLayoutConstraint.LayoutAttributes.LastBaseline
		      Return "LastBaseline"
		    Case SOSLayoutConstraint.LayoutAttributes.Leading
		      Return "Leading"
		    Case SOSLayoutConstraint.LayoutAttributes.LeadingMargin
		      Return "LeadingMargin"
		    Case SOSLayoutConstraint.LayoutAttributes.Left
		      Return "Left"
		    Case SOSLayoutConstraint.LayoutAttributes.LeftMargin
		      Return "LeftMargin"
		    Case SOSLayoutConstraint.LayoutAttributes.Right
		      Return "Right"
		    Case SOSLayoutConstraint.LayoutAttributes.RIghtMargin
		      Return "RightMargin"
		    Case SOSLayoutConstraint.LayoutAttributes.Top
		      Return "Top"
		    Case SOSLayoutConstraint.LayoutAttributes.TopMargin
		      Return "TopMargin"
		    Case SOSLayoutConstraint.LayoutAttributes.Trailing
		      Return "Trailing"
		    Case SOSLayoutConstraint.LayoutAttributes.TrailingMargin
		      Return "TrailingMargin"
		    Case SOSLayoutConstraint.LayoutAttributes.Width
		      Return "Width"
		    Case Else
		      Break
		      //oops
		    End Select
		    Return ""
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, CompatibilityFlags = (TargetIOS and (Target64Bit))
		Function CompressionResistancePriorityForAxis(Extends item as MobileUIControl, axis as SOSConstraintKit.Axis) As Double
		  // Gets or Sets the Compression Resistance priority for the specified Axis
		  #If TargetIOS
		    // - (UILayoutPriority)contentCompressionResistancePriorityForAxis:(UILayoutConstraintAxis)axis;
		    Declare Function contentCompressionResistancePriorityForAxis Lib "Foundation" Selector "contentCompressionResistancePriorityForAxis:" ( obj As ptr , axis As integer ) As single
		    
		    Return contentCompressionResistancePriorityForAxis(item.handle, CType(axis, Integer))
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, CompatibilityFlags = (TargetIOS and (Target64Bit))
		Sub CompressionResistancePriorityForAxis(Extends item as MobileUIControl, axis as SOSConstraintKit.Axis, assigns priority as double)
		  // Sets the Compression Resistance priority for the specified Axis
		  #If TargetIOS
		    // - (void)setContentCompressionResistancePriority:(UILayoutPriority)priority forAxis:(UILayoutConstraintAxis)axis;
		    Declare Sub setContentCompressionResistancePriority_forAxis Lib "Foundation" Selector "setContentCompressionResistancePriority:forAxis:" ( obj As ptr , priority As single , axis As integer )
		    
		    setContentCompressionResistancePriority_forAxis(item.handle, priority, CType(axis, Integer))
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ConstraintForControlAttribute(extends view as MobileScreen, ctl as mobileUIControl, attr as SOSLayoutConstraint.LayoutAttributes) As SOSLayoutConstraint
		  // Gets a constraint for a particular attribute 
		  #If TargetiOS
		    Dim ca() As SOSLayoutConstraint = view.Constraints
		    
		    For i As Integer = 0 To UBound(ca)
		      If ca(i).FirstItem = ctl.Handle Then
		        If ca(i).FirstAttribute = attr Then
		          Return ca(i)
		        End If
		      End If
		    Next
		    
		    Return Nil
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ConstraintForControlAttribute(extends ctl as mobileUIControl, attr as SOSLayoutConstraint.LayoutAttributes) As SOSLayoutConstraint
		  // Gets a constraint for a particular attribute 
		  #If TargetiOS
		    Dim ca() As SOSLayoutConstraint = ctl.Constraints
		    
		    For i As Integer = 0 To UBound(ca)
		      If ca(i).FirstItem = ctl.Handle Then
		        If ca(i).FirstAttribute = attr Then
		          Return ca(i)
		        End If
		      End If
		    Next
		    
		    Return Nil
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ConstraintMatchingIntrinsicHeight(extends view as MobileUIControl) As SOSLayoutConstraint
		  // Creates and returns an intrinsic height constraint for the specified control
		  #If TargetiOS
		    Dim sz As size = view.IntrinsicContentSize
		    
		    Return New SOSLayoutConstraint(view.Handle, SOSLayoutConstraint.LayoutAttributes.Height, SOSLayoutConstraint.relations.Equal, sz.Width)
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ConstraintMatchingIntrinsicWidth(extends view as MobileUIControl) As SOSLayoutConstraint
		  // Creates and returns an intrinsic width constraint for the specified control
		  #If TargetiOS
		    Dim sz As size = view.IntrinsicContentSize
		    
		    Return New SOSLayoutConstraint(view.Handle, SOSLayoutConstraint.LayoutAttributes.Width, SOSLayoutConstraint.relations.Equal, sz.Width)
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, CompatibilityFlags = (TargetIOS and (Target64Bit))
		Function Constraints(extends screen as MobileScreen) As SOSLayoutConstraint()
		  // Returns all of the constraints within the specified MobileScreen
		  #If TargetIOS
		    // @property(nonatomic, readonly) NSArray<__kindof NSLayoutConstraint *> *constraints;
		    Declare Function getConstraints Lib "Foundation" Selector "constraints" (obj As ptr) As Ptr
		    
		    Dim consts As ptr = getConstraints(screen.Handle)
		    
		    Declare Function count Lib "Foundation" Selector "count" (obj As ptr) As Integer
		    // - (ObjectType)objectAtIndex:(NSUInteger)index;
		    Declare Function objectAtIndex Lib "Foundation" Selector "objectAtIndex:" ( obj As ptr , index As Integer ) As Ptr
		    
		    Dim c As Integer = count(consts)
		    
		    Dim ca() As SOSLayoutConstraint
		    For i As Integer = 0 To c-1
		      ca.Add SOSLayoutConstraint.Create(objectAtIndex(consts, i))
		    Next
		    
		    Return ca
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, CompatibilityFlags = (TargetIOS and (Target64Bit))
		Function Constraints(extends control as MobileUIControl) As SOSLayoutConstraint()
		  // Returns all of the constraints within the specified MobileUIControl
		  #If TargetIOS
		    // @property(nonatomic, readonly) NSArray<__kindof NSLayoutConstraint *> *constraints;
		    Declare Function getConstraints Lib "Foundation" Selector "constraints" (obj As ptr) As Ptr
		    
		    Dim consts As ptr = getConstraints(control.Handle)
		    
		    Declare Function count Lib "Foundation" Selector "count" (obj As ptr) As Integer
		    // - (ObjectType)objectAtIndex:(NSUInteger)index;
		    Declare Function objectAtIndex Lib "Foundation" Selector "objectAtIndex:" ( obj As ptr , index As Integer ) As Ptr
		    
		    Dim c As Integer = count(consts)
		    
		    Dim ca() As SOSLayoutConstraint
		    For i As Integer = 0 To c-1
		      ca.Add SOSLayoutConstraint.Create(objectAtIndex(consts, i))
		    Next
		    
		    return ca
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ConstraintsForControl(Extends view as MobileScreen, control as MobileUIControl) As SOSLayoutConstraint()
		  // Returns all constraints which pertain to the specified control on a view
		  #If TargetiOS
		    Dim rv() As SOSLayoutConstraint
		    Dim ca() As SOSLayoutConstraint = view.constraints
		    For i As Integer = 0 To UBound(ca)
		      If ca(i).FirstItem = control.Handle Then
		        rv.Add ca(i)
		      End If
		    Next
		    
		    ca = control.Constraints
		    For i As Integer = 0 To UBound(ca)
		      If ca(i).FirstItem = control.Handle Then
		        rv.Add ca(i)
		      End If
		    Next
		    
		    Return rv
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ConvertConstraintsForAllControls(extends view as MobileScreen, newPriority as Double)
		  // Converts all constraints on a particular MobileScreen to SOSLayoutConstraints, changing them all to a particular priority
		  #If TargetiOS
		    For Each ctl As MobileControl In view.controls
		      If ctl IsA MobileUIControl Then
		        view.ConvertConstraintsForControl(MobileUIControl(ctl), newPriority)
		      End If
		    Next
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ConvertConstraintsForControl(extends view as MobileScreen, item as MobileUIControl, newPriority as Double = 0)
		  // Converts all constraints for a specific MobileUIControl on a particular MobileScreen to SOSLayoutConstraints, changing them all to a particular Priority
		  
		  #If TargetiOS
		    // First, the constraints related to this control that are on the view
		    Dim ca() As SOSConstraintKit.SOSLayoutConstraint = view.constraints
		    
		    // clip the value to be between 1 and 999 so it'll be editable later
		    If newPriority > 0 Then
		      newPriority = Min(DefaultPriority, Max(1, newPriority))
		    End If
		    
		    For i As Integer = UBound(ca) DownTo 0
		      Dim attr1value As Integer = CType(ca(i).FirstAttribute, Integer)
		      Dim attr2value As Integer = CType(ca(i).SecondAttribute, Integer)
		      
		      // 32 and 33 are minx and miny, something left over from the springs and struts era
		      If attr1value = 32 Or attr1value = 33 Or attr2value = 32 Or attr2value = 33 Then
		        ca(i).Active = False
		        Continue
		      End If
		      
		      If ca(i).FirstItem = item.Handle Or ca(i).SecondItem = item.Handle Then
		        Dim c As New SOSLayoutConstraint(ca(i).FirstItem, ca(i).FirstAttribute, ca(i).relation, ca(i).SecondItem, ca(i).SecondAttribute, ca(i).Multiplier, ca(i).Offset)
		        c.Identifier = ca(i).identifier
		        If c.Identifier = "" Then
		          c.Identifier = item.Name + "_" + AttributeName(ca(i).firstAttribute)
		        End If
		        
		        If newPriority > 0 Then
		          c.Priority = newPriority
		        End If
		        
		        // activate the new constraint
		        c.Active = True
		        
		        // deactivate the old constraint
		        ca(i).active = False
		      End If
		    Next
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ConvertConstraintsForControl(extends view as MobileScreen, item as MobileUIControl, newPriority as SOSConstraintKit.Priorities)
		  // Converts all constraints for a specific MobileUIControl on a particular MobileScreen to SOSLayoutConstraints, changing them all to a particular Priority
		  
		  #If TargetiOS
		    view.ConvertConstraintsForControl(item, CType(newPriority, Double))
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, CompatibilityFlags = (TargetDesktop and (Target64Bit))
		Sub ConvertToAutolayout(Extends w as DesktopWindow, useLeadingTrailing as Boolean = False, unconstrainWindow as boolean = False)
		  // Converts the DesktopWindow layout to one that's using constraints
		  
		  #If TargetMacOS
		    // Make the constraints for each of the items based on their sizes, before we change anything
		    Declare Sub setTranslatesAutoresizingMaskIntoConstraints Lib "Foundation" Selector "setTranslatesAutoresizingMaskIntoConstraints:" (obj As ptr, value As Boolean)
		    
		    // Grab the info about each of the controls before we make any changes
		    // Turn off the autoresizing conversion as we go
		    Dim ctlArray() As ControlInfo
		    For Each tmp As Object In w.Controls
		      Select Case True
		      Case tmp IsA DesktopUIControl
		        ctlArray.Add New ControlInfo(DesktopUIControl(tmp))
		        setTranslatesAutoresizingMaskIntoConstraints(DesktopUIControl(tmp).Handle, False)
		      Case tmp IsA DesktopContainer
		        ctlArray.Add New ControlInfo(DesktopContainer(tmp))
		        setTranslatesAutoresizingMaskIntoConstraints(DesktopContainer(tmp).Handle, False)
		      End Select
		    Next
		    
		    // @property BOOL autoresizesSubviews;
		    If Not w IsA DesktopContainer Then
		      Declare Sub setAutoresizesSubviews Lib "Foundation" Selector "setAutoresizesSubviews:" (obj As ptr, value As Boolean)
		      Declare Function getContentView Lib "Foundation" Selector "contentView" (obj As ptr) As Ptr
		      
		      Dim cv As ptr = getContentView(w.Handle)
		      setAutoresizesSubviews(cv, False)
		      
		      // @property(getter=isFlipped, readonly) BOOL flipped;
		      Declare Sub setFlipped Lib "Foundation" Selector "setFlipped:" (obj As ptr, value As Boolean)
		      setFlipped(cv, True)
		      
		      If unconstrainWindow Then
		        w.MinimumWidth = 0
		        w.MinimumHeight = 0
		        w.MaximumWidth = 32000
		        w.MaximumHeight = 32000
		      End If
		    End If
		    
		    For Each item As ControlInfo In ctlArray
		      Dim ctl As Object = item.control
		      
		      // Horizontal
		      If Not item.LockLeft = item.LockRight Then
		        If ctl IsA DesktopUIControl Then
		          DesktopUIControl(ctl).WidthAnchor.ConstraintEqualToConstant(item.Width).Active = True
		        ElseIf ctl IsA DesktopContainer Then
		          DesktopContainer(ctl).WidthAnchor.ConstraintEqualToConstant(item.Width).Active = True
		        End If
		      End If
		      If item.LockLeft Then
		        If useLeadingTrailing Then
		          If ctl IsA DesktopUIControl Then
		            DesktopUIControl(ctl).LeadingAnchor.ConstraintEqualToAnchor(w.LeadingAnchor, item.Left).Active = True
		          ElseIf ctl IsA DesktopContainer Then
		            DesktopContainer(ctl).LeadingAnchor.ConstraintEqualToAnchor(w.LeadingAnchor, item.Left).Active = True
		          End If
		        Else
		          If ctl IsA DesktopUIControl Then
		            DesktopUIControl(ctl).LeftAnchor.ConstraintEqualToAnchor(w.LeftAnchor, item.Left).Active = True
		          ElseIf ctl IsA DesktopContainer Then
		            DesktopContainer(ctl).LeftAnchor.ConstraintEqualToAnchor(w.LeftAnchor, item.Left).Active = True
		          End If
		        End If
		      End If
		      If item.LockRight Then
		        If useLeadingTrailing Then
		          If ctl IsA DesktopUIControl Then
		            w.TrailingAnchor.ConstraintEqualToAnchor(DesktopUIControl(ctl).TrailingAnchor, w.Width - (item.Left + item.width)).Active = True
		          ElseIf ctl IsA DesktopContainer Then
		            w.TrailingAnchor.ConstraintEqualToAnchor(DesktopContainer(ctl).TrailingAnchor, w.Width - (item.Left + item.width)).Active = True
		          End If
		        Else
		          If ctl IsA DesktopUIControl Then
		            // inverted so the constant would be positive
		            w.RightAnchor.ConstraintEqualToAnchor(DesktopUIControl(ctl).RightAnchor, w.Width - (item.Left + item.width)).Active = True
		          ElseIf ctl IsA DesktopContainer Then
		            // inverted so the constant would be positive
		            w.RightAnchor.ConstraintEqualToAnchor(DesktopContainer(ctl).RightAnchor, w.Width - (item.Left + item.width)).Active = True
		          End If
		        End If
		      End If
		      
		      // Vertical
		      If Not item.LockTop = item.LockBottom Then
		        If ctl IsA DesktopUIControl Then
		          DesktopUIControl(ctl).HeightAnchor.ConstraintEqualToConstant(item.Height).Active = True
		        ElseIf ctl IsA DesktopContainer Then
		          DesktopContainer(ctl).HeightAnchor.ConstraintEqualToConstant(item.Height).Active = True
		        End If
		      End If
		      If item.LockTop Then
		        If ctl IsA DesktopUIControl Then
		          DesktopUIControl(ctl).TopAnchor.ConstraintEqualToAnchor(w.TopAnchor, item.Top).Active = True
		        ElseIf ctl IsA DesktopContainer Then
		          DesktopContainer(ctl).TopAnchor.ConstraintEqualToAnchor(w.TopAnchor, item.Top).Active = True
		        End If
		      End If
		      If item.LockBottom Then
		        If ctl IsA DesktopUIControl Then
		          // inverted so the constant would be positive
		          w.BottomAnchor.ConstraintEqualToAnchor(DesktopUIControl(ctl).BottomAnchor, w.Height - (item.top + item.height)).Active = True
		        ElseIf ctl IsA DesktopContainer Then
		          // inverted so the constant would be positive
		          w.BottomAnchor.ConstraintEqualToAnchor(DesktopContainer(ctl).BottomAnchor, w.Height - (item.top + item.height)).Active = True
		        End If
		      End If
		      
		      // Do special things
		      Select Case item.control
		      Case IsA DesktopContainer
		        DesktopContainer(item.control).ConvertToAutolayout(useLeadingTrailing)
		      Case Else
		        If item.control IsA DesktopUIControl Then
		          ConvertControlToAutolayout(DesktopUIControl(item.control))
		        End If
		      End Select
		    Next
		    
		  #EndIf
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function DirectionalLayoutMargins(Extends view as MobileScreen) As NSDirectionalEdgeInsets
		  // Gets or Sets the directional edge insets for the specified view or control
		  #If TargetIOS
		    // @property(nonatomic) NSDirectionalEdgeInsets directionalLayoutMargins;
		    Declare Function getDirectionalLayoutMargins Lib "Foundation" Selector "directionalLayoutMargins" (obj As ptr) As NSDirectionalEdgeInsets
		    
		    Return getDirectionalLayoutMargins(view.Handle)
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub DirectionalLayoutMargins(Extends view as MobileScreen, assigns value as NSDirectionalEdgeInsets)
		  #If TargetIOS
		    // @property(nonatomic) NSDirectionalEdgeInsets directionalLayoutMargins;
		    Declare Sub setDirectionalLayoutMargins Lib "Foundation" Selector "setDirectionalLayoutMargins:" (obj As ptr, value As NSDirectionalEdgeInsets)
		    
		    setDirectionalLayoutMargins(view.Handle, value)
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function DirectionalLayoutMargins(Extends view as MobileUIControl) As NSDirectionalEdgeInsets
		  #If TargetIOS
		    // @property(nonatomic) NSDirectionalEdgeInsets directionalLayoutMargins;
		    Declare Function getDirectionalLayoutMargins Lib "Foundation" Selector "directionalLayoutMargins" (obj As ptr) As NSDirectionalEdgeInsets
		    
		    Return getDirectionalLayoutMargins(view.Handle)
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub DirectionalLayoutMargins(Extends view as MobileUIControl, assigns value as NSDirectionalEdgeInsets)
		  #If TargetIOS
		    // @property(nonatomic) NSDirectionalEdgeInsets directionalLayoutMargins;
		    Declare Sub setDirectionalLayoutMargins Lib "Foundation" Selector "setDirectionalLayoutMargins:" (obj As ptr, value As NSDirectionalEdgeInsets)
		    
		    setDirectionalLayoutMargins(view.Handle, value)
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function FirstBaselineOffset(extends view as MobileTextControl) As Double
		  // Gets the offset for the first baseline of a MobileTextControl based on its current font
		  #If TargetiOS
		    // @property(nullable, nonatomic, strong) UIFont *font;
		    Declare Function getFont Lib "Foundation" Selector "font" (obj As ptr) As Ptr
		    
		    // @property(nonatomic, readonly) CGFloat ascender;
		    Declare Function getAscender Lib "Foundation" Selector "ascender" (obj As ptr) As Double
		    
		    Return getAscender(getFont(view.Handle))
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function HuggingPriorityForAxis(Extends item as MobileUIControl, axis as SOSConstraintKit.Axis) As Double
		  // Gets or Sets the Hugging Priority for the specified axis
		  
		  #If TargetIOS
		    // - (UILayoutPriority)contentHuggingPriorityForAxis:(UILayoutConstraintAxis)axis;
		    Declare Function contentHuggingPriorityForAxis Lib "Foundation" Selector "contentHuggingPriorityForAxis:" ( obj As ptr , axis As Integer ) As Single
		    
		    Return contentHuggingPriorityForAxis( item.Handle, CType(axis, Integer))
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub HuggingPriorityForAxis(Extends item as MobileUIControl, Axis as SOSConstraintKit.Axis, assigns priority as Double)
		  // Gets or Sets the Hugging Priority for the specified axis
		  
		  #If TargetIOS
		    // - (void)setContentHuggingPriority:(UILayoutPriority)priority forAxis:(UILayoutConstraintAxis)axis;
		    Declare Sub setContentHuggingPriority_forAxis Lib "Foundation" Selector "setContentHuggingPriority:forAxis:" ( obj As ptr , priority As single , axis As integer )
		    
		    setContentHuggingPriority_forAxis( item.handle, priority, CType(axis, Integer))
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function InsetsLayoutMarginsFromSafeArea(extends view as MobileUIControl) As Boolean
		  // Gets or Sets whether the layout margins are inset from the safe area
		  #If TargetiOS
		    // @property(nonatomic) BOOL insetsLayoutMarginsFromSafeArea;
		    Declare Function getInsetsLayoutMarginsFromSafeArea Lib "Foundation" Selector "insetsLayoutMarginsFromSafeArea" (obj As ptr) As Boolean
		    
		    Return getInsetsLayoutMarginsFromSafeArea(view.handle)
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub InsetsLayoutMarginsFromSafeArea(extends view as MobileUIControl, assigns value as Boolean)
		  #If TargetiOS
		    
		    // @property(nonatomic) BOOL insetsLayoutMarginsFromSafeArea;
		    Declare Sub setInsetsLayoutMarginsFromSafeArea Lib "Foundation" Selector "setInsetsLayoutMarginsFromSafeArea:" (obj As ptr, value As Boolean)
		    
		    setInsetsLayoutMarginsFromSafeArea(view.handle, value)
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function IntrinsicContentSize(extends view as MobileUIControl) As Size
		  // Gets the Intrinsic content size for a control
		  #If TargetiOS
		    // @property(nonatomic, readonly) CGSize intrinsicContentSize;
		    Declare Function getIntrinsicContentSize Lib "Foundation" Selector "intrinsicContentSize" (obj As ptr) As CGSize
		    
		    Dim sz As cgsize = getIntrinsicContentSize(view.handle)
		    
		    Return New size(sz.width, sz.height)
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub InvalidateIntrinsicContentSize(extends view as MobileUIControl)
		  // Invalidates the intrinsic content size for a control
		  #If TargetiOS
		    // - (void)invalidateIntrinsicContentSize;
		    Declare Sub invalidateIntrinsicContentSize Lib "Foundation" Selector "invalidateIntrinsicContentSize" (obj As ptr)
		    
		    invalidateIntrinsicContentSize(view.Handle)
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub LayoutIfNeeded(extends view as MobileScreen)
		  // Asks the view to update its layout
		  #If TargetiOS
		    // - (void)layoutIfNeeded;
		    Declare Sub layoutIfNeeded Lib "Foundation" Selector "layoutIfNeeded" (obj As ptr)
		    
		    layoutIfNeeded(view.Handle)
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function LayoutMargins(extends view as MobileScreen) As UIEdgeInsets
		  // Sets or gets the layout margins for the specified view or control
		  #If TargetiOS
		    // @property(nonatomic) UIEdgeInsets layoutMargins;
		    Declare Function getLayoutMargins Lib "Foundation" Selector "layoutMargins" (obj As ptr) As UIEdgeInsets
		    
		    Return getLayoutMargins(view.Handle)
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub LayoutMargins(extends view as MobileScreen, assigns value as UIEdgeInsets)
		  #If TargetiOS
		    // @property(nonatomic) UIEdgeInsets layoutMargins;
		    Declare Sub setLayoutMargins Lib "Foundation" Selector "setLayoutMargins:" (obj As ptr, value As UIEdgeInsets)
		    
		    setLayoutMargins(view.Handle, value)
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function LayoutMargins(extends view as MobileUIControl) As UIEdgeInsets
		  #If TargetiOS
		    // @property(nonatomic) UIEdgeInsets layoutMargins;
		    Declare Function getLayoutMargins Lib "Foundation" Selector "layoutMargins" (obj As ptr) As UIEdgeInsets
		    
		    Return getLayoutMargins(view.Handle)
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub LayoutMargins(extends view as MobileUIControl, assigns value as UIEdgeInsets)
		  #If TargetiOS
		    // @property(nonatomic) UIEdgeInsets layoutMargins;
		    Declare Sub setLayoutMargins Lib "Foundation" Selector "setLayoutMargins:" (obj As ptr, value As UIEdgeInsets)
		    
		    setLayoutMargins(view.Handle, value)
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function PreservesSuperviewLayoutMargins(extends view as MobileUIControl) As Boolean
		  // Whether or not the control preserves its superview's layout margins
		  #If TargetiOS
		    // @property(nonatomic) BOOL preservesSuperviewLayoutMargins;
		    Declare Function getPreservesSuperviewLayoutMargins Lib "Foundation" Selector "preservesSuperviewLayoutMargins" (obj As ptr) As Boolean
		    
		    Return getPreservesSuperviewLayoutMargins(view.handle)
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub PreservesSuperviewLayoutMargins(extends view as MobileUIControl, assigns value as boolean)
		  #If TargetiOS
		    
		    // @property(nonatomic) BOOL preservesSuperviewLayoutMargins;
		    Declare Sub setPreservesSuperviewLayoutMargins Lib "Foundation" Selector "setPreservesSuperviewLayoutMargins:" (obj As ptr, value As Boolean)
		    
		    setPreservesSuperviewLayoutMargins(view.handle, value)
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub RecreateConstraintsForAllControls(extends view as mobilescreen)
		  // Recreates the constraints for a particular screen as SOSLayoutConstraints, optionally with a specified priority.
		  Dim ca() As SOSConstraintKit.SOSLayoutConstraint = view.constraints
		  
		  Dim newConstraints() As SOSLayoutConstraint
		  
		  For i As Integer = UBound(ca) DownTo 0
		    Dim c As New SOSLayoutConstraint(ca(i).FirstItem, ca(i).FirstAttribute, ca(i).relation, ca(i).SecondItem, ca(i).SecondAttribute, ca(i).Multiplier, ca(i).Offset)
		    c.Identifier = ca(i).identifier
		    c.Priority = ca(i).priority
		    c.Active = True
		    newConstraints.add c
		    
		    ca(i).active = False
		  Next
		  
		  For i As Integer = 0 To UBound(newConstraints)
		    view.AddConstraint(newConstraints(i))
		  Next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub RecreateConstraintsForAllControls(extends view As mobilescreen, newPriority As Double)
		  Dim ca() As SOSConstraintKit.SOSLayoutConstraint = view.constraints
		  
		  Dim newConstraints() As SOSLayoutConstraint
		  
		  // clip the value to be between 1 and 999 so it'll be editable later
		  If newPriority > 0 Then
		    newPriority = Min(DefaultPriority, Max(1, newPriority))
		  End If
		  
		  For i As Integer = UBound(ca) DownTo 0
		    Dim c As New SOSLayoutConstraint(ca(i).FirstItem, ca(i).FirstAttribute, ca(i).relation, ca(i).SecondItem, ca(i).SecondAttribute, ca(i).Multiplier, ca(i).Offset)
		    c.Identifier = ca(i).identifier
		    c.Priority = newPriority
		    c.Active = True
		    newConstraints.add c
		    
		    ca(i).active = False
		  Next
		  
		  For i As Integer = 0 To UBound(newConstraints)
		    view.AddConstraint(newConstraints(i))
		  Next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, CompatibilityFlags = (TargetIOS and (Target64Bit))
		Sub RemoveConstraint(extends screen as MobileScreen, constraint as SOSLayoutConstraint)
		  // Remove a constraint from the specified screen or control
		  If constraint = Nil Then
		    // Bail if the constraint is nil because the app will crash
		    Return
		  End If
		  
		  #If TargetIOS
		    // - (void)removeConstraint:(NSLayoutConstraint *)constraint;
		    Declare Sub removeConstraint Lib "Foundation" Selector "removeConstraint:" ( obj As ptr , constraint As Ptr )
		    
		    removeConstraint(screen.Handle, constraint.Handle)
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, CompatibilityFlags = (TargetIOS and (Target64Bit))
		Sub RemoveConstraint(extends control as MobileUIControl, constraint as SOSLayoutConstraint)
		  // Remove a constraint from the specified screen or control
		  If constraint = Nil Then
		    // Bail if the constraint is nil because the app will crash
		    Return
		  End If
		  
		  #If TargetIOS
		    // - (void)removeConstraint:(NSLayoutConstraint *)constraint;
		    Declare Sub removeConstraint Lib "Foundation" Selector "removeConstraint:" ( obj As ptr , constraint As Ptr )
		    
		    removeConstraint(control.Handle, constraint.Handle)
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub RemoveConstraintsForControl(extends view as MobileScreen, ctl as MobileUIControl)
		  // Removes the position constraints for the specified control
		  
		  Dim ca() As SOSLayoutConstraint = view.constraints
		  
		  For i As Integer = 0 To UBound(ca)
		    If ca(i).FirstItem = ctl.Handle Then
		      view.RemoveConstraint(ca(i))
		    End If
		  Next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub RemoveConstraintsForControl(extends view as MobileUIControl, ctl as MobileUIControl)
		  // Removes the position constraints for the specified control
		  
		  Dim ca() As SOSLayoutConstraint = view.constraints
		  
		  For i As Integer = 0 To UBound(ca)
		    If ca(i).FirstItem = ctl.Handle Then
		      view.RemoveConstraint(ca(i))
		    End If
		  Next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub RemoveHeightConstraints(extends view as MobileUIControl)
		  // Removes the Height constraint(s) from the control
		  
		  dim ca() as SOSLayoutConstraint = view.Constraints
		  For i As Integer = 0 To UBound(ca)
		    If (ca(i).FirstItem = view.Handle And ca(i).SecondItem = Nil) And ca(i).FirstAttribute = SOSLayoutConstraint.LayoutAttributes.Height Then
		      ca(i).Active = False
		      
		    End If
		  Next i
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub RemoveWidthConstraints(extends view as MobileUIControl)
		  // Removes the Width constraint(s) from the control
		  
		  Dim ca() As SOSLayoutConstraint = view.Constraints
		  For i As Integer = 0 To UBound(ca)
		    If (ca(i).FirstItem = view.Handle And ca(i).SecondItem = Nil) And ca(i).FirstAttribute = SOSLayoutConstraint.LayoutAttributes.Width Then
		      ca(i).Active = False
		      
		    End If
		  Next i
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function SafeAreaInsets(view as MobileScreen) As UIEdgeInsets
		  // Returns the safe area insets of the specified view
		  #If TargetiOS
		    // @property(nonatomic, readonly) UIEdgeInsets safeAreaInsets;
		    Declare Function getSafeAreaInsets Lib "Foundation" Selector "safeAreaInsets" (obj As ptr) As UIEdgeInsets
		    
		    Return getSafeAreaInsets(view.Handle)
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub UpdateConstraints(extends screen as MobileScreen)
		  // Asks the view or control to refresh its constraints
		  #If TargetIOS
		    // - (void)updateConstraintsIfNeeded;
		    Declare Sub updateConstraintsIfNeeded Lib "Foundation" Selector "updateConstraintsIfNeeded" (obj As ptr)
		    
		    updateConstraintsIfNeeded(screen.Handle)
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub UpdateConstraints(extends control as MobileUIControl)
		  // Asks the view or control to refresh its constraints
		  #If TargetIOS
		    // - (void)updateConstraintsIfNeeded;
		    Declare Sub updateConstraintsIfNeeded Lib "Foundation" Selector "updateConstraintsIfNeeded" (obj As ptr)
		    
		    updateConstraintsIfNeeded(control.Handle)
		  #EndIf
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target64Bit)) or  (TargetWeb and (Target64Bit)) or  (TargetDesktop and (Target64Bit)) or  (TargetIOS and (Target64Bit)), Description = 5468652064656661756C74207072696F726974792075736564206279206D6574686F647320776869636820637265617465206F7220726563726561746520636F6E73747261696E74732E
		Protected DefaultPriority As Double = 999.0
	#tag EndProperty


	#tag Structure, Name = CGSize, Flags = &h21
		width as cgfloat
		height as cgfloat
	#tag EndStructure

	#tag Structure, Name = NSDirectionalEdgeInsets, Flags = &h0, Description = 4564676520696E7365747320776869636820737570706F7274204C656164696E6720616E6420547261696C696E67
		Bottom as CGFloat
		  Leading as CGFloat
		  Top as CGFloat
		Trailing as CGFloat
	#tag EndStructure

	#tag Structure, Name = UIEdgeInsets, Flags = &h0, Description = 4564676520696E7365747320776869636820737570706F7274204C65667420616E64205269676874
		bottom as CGFloat
		  left as CGFloat
		  right as CGFloat
		top as CGFloat
	#tag EndStructure


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
