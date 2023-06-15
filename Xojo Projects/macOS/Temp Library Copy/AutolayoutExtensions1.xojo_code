#tag Module
Protected Module AutolayoutExtensions1
	#tag CompatibilityFlags = false
	#tag Method, Flags = &h0, CompatibilityFlags = (TargetDesktop and (Target64Bit)) or  (TargetIOS and (Target64Bit))
		Sub AddConstraint(extends control as DesktopUIControl, constraint as SOSLayoutConstraint)
		  // adds an SOSLayoutConstraint to the DesktopUIControl
		  #if TargetMacOS
		    // - (void)addConstraint:(NSLayoutConstraint *)constraint;
		    Declare Sub addConstraint Lib "Foundation" Selector "addConstraint:" ( obj As ptr , constraint As Ptr )
		    
		    addConstraint(control.Handle, constraint.Handle)
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, CompatibilityFlags = (TargetDesktop and (Target64Bit))
		Sub AddConstraint(extends screen as DesktopWindow, constraint as SOSLayoutConstraint)
		  // adds an SOSLayoutConstraint to the DesktopWindow
		  #if TargetMacOS
		    
		    // - (void)addConstraint:(NSLayoutConstraint *)constraint;
		    Declare Sub addConstraint Lib "Foundation" Selector "addConstraint:" ( obj As ptr , constraint As Ptr )
		    
		    addConstraint(Screen.Handle, constraint.Handle)
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, CompatibilityFlags = (TargetDesktop and (Target64Bit))
		Sub AddConstraints(extends view as DesktopUIControl, constraints() as SOSLayoutConstraint)
		  // adds an array of SOSLayoutConstraints to the DesktopUIControl
		  
		  For i As Integer = 0 To UBound(constraints)
		    constraints(i).Priority = DefaultPriority
		    view.AddConstraint(constraints(i))
		  Next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, CompatibilityFlags = (TargetDesktop and (Target64Bit))
		Sub AddConstraints(extends view as DesktopUIControl, constraints() as SOSLayoutConstraint, priority as Double)
		  // adds an array of SOSLayoutConstraints to the DesktopUIControl with a specific priority
		  // throttle to valid values
		  priority = Min(Max(priority, 1.0), 1000.0)
		  
		  For i As Integer = 0 To UBound(constraints)
		    constraints(i).Priority = priority
		    view.AddConstraint(constraints(i))
		  Next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, CompatibilityFlags = (TargetDesktop and (Target64Bit))
		Sub AddConstraints(extends view as DesktopWindow, constraints() as SOSLayoutConstraint)
		  // adds an array of SOSLayoutConstraints to the DesktopWindow
		  For i As Integer = 0 To UBound(constraints)
		    constraints(i).Priority = DefaultPriority
		    view.AddConstraint(constraints(i))
		  Next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, CompatibilityFlags = (TargetDesktop and (Target64Bit))
		Sub AddConstraints(extends view as DesktopWindow, constraints() as SOSLayoutConstraint, priority as Double)
		  // adds an array of SOSLayoutConstraints to the DesktopWindow with a particular priority
		  
		  // throttle to valid values
		  priority = Min(Max(priority, 1.0), DefaultPriority)
		  
		  For i As Integer = 0 To UBound(constraints)
		    constraints(i).Priority = priority
		    view.AddConstraint(constraints(i))
		  Next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function AttributeName(attr as SOSLayoutConstraint.LayoutAttributes) As String
		  #if TargetMacOS
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

	#tag Method, Flags = &h0, CompatibilityFlags = (TargetDesktop and (Target64Bit))
		Function CompressionResistancePriorityForAxis(Extends item as DesktopContainer, axis as SOSConstraintKit.Axis) As Double
		  // Gets the Compression Resistance priority for the specified Axis
		  #if TargetMacOS
		    // - (UILayoutPriority)contentCompressionResistancePriorityForAxis:(UILayoutConstraintAxis)axis;
		    Declare Function contentCompressionResistancePriorityForAxis Lib "Foundation" Selector "contentCompressionResistancePriorityForAxis:" ( obj As ptr , axis As integer ) As single
		    
		    Return contentCompressionResistancePriorityForAxis(item.handle, CType(axis, Integer))
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, CompatibilityFlags = (TargetDesktop and (Target64Bit))
		Sub CompressionResistancePriorityForAxis(Extends item as DesktopContainer, axis as SOSConstraintKit.Axis, assigns priority as double)
		  // Sets the Compression Resistance priority for the specified Axis
		  #if TargetMacOS
		    // - (void)setContentCompressionResistancePriority:(UILayoutPriority)priority forAxis:(UILayoutConstraintAxis)axis;
		    Declare Sub setContentCompressionResistancePriority_forAxis Lib "Foundation" Selector "setContentCompressionResistancePriority:forAxis:" ( obj As ptr , priority As single , axis As integer )
		    
		    setContentCompressionResistancePriority_forAxis(item.handle, priority, CType(axis, Integer))
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, CompatibilityFlags = (TargetDesktop and (Target64Bit))
		Function CompressionResistancePriorityForAxis(Extends item as DesktopUIControl, axis as SOSConstraintKit.Axis) As Double
		  // Gets the Compression Resistance priority for the specified Axis
		  #if TargetMacOS
		    // - (UILayoutPriority)contentCompressionResistancePriorityForAxis:(UILayoutConstraintAxis)axis;
		    Declare Function contentCompressionResistancePriorityForAxis Lib "Foundation" Selector "contentCompressionResistancePriorityForAxis:" ( obj As ptr , axis As integer ) As single
		    
		    Return contentCompressionResistancePriorityForAxis(item.handle, CType(axis, Integer))
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, CompatibilityFlags = (TargetDesktop and (Target64Bit))
		Sub CompressionResistancePriorityForAxis(Extends item as DesktopUIControl, axis as SOSConstraintKit.Axis, assigns priority as double)
		  // Sets the Compression Resistance priority for the specified Axis
		  #if TargetMacOS
		    // - (void)setContentCompressionResistancePriority:(UILayoutPriority)priority forAxis:(UILayoutConstraintAxis)axis;
		    Declare Sub setContentCompressionResistancePriority_forAxis Lib "Foundation" Selector "setContentCompressionResistancePriority:forAxis:" ( obj As ptr , priority As single , axis As integer )
		    
		    setContentCompressionResistancePriority_forAxis(item.handle, priority, CType(axis, Integer))
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, CompatibilityFlags = (TargetDesktop and (Target64Bit))
		Function ConstraintForControlAttribute(extends view as DesktopWindow, ctl as DesktopUIControl, attr as SOSLayoutConstraint.LayoutAttributes) As SOSLayoutConstraint
		  // Gets a constraint for a particular attribute 
		  #if TargetMacOS
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

	#tag Method, Flags = &h0, CompatibilityFlags = (TargetDesktop and (Target64Bit))
		Function ConstraintMatchingIntrinsicHeight(extends view as DesktopUIControl) As SOSLayoutConstraint
		  // Creates an intrinsic height constraint for the specified control
		  #if TargetMacOS
		    Dim sz As size = view.IntrinsicContentSize
		    
		    Return New SOSLayoutConstraint(view.Handle, SOSLayoutConstraint.LayoutAttributes.Height, SOSLayoutConstraint.relations.Equal, sz.Width)
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, CompatibilityFlags = (TargetDesktop and (Target64Bit))
		Function ConstraintMatchingIntrinsicWidth(extends view as DesktopUIControl) As SOSLayoutConstraint
		  // Creates an intrinsic width constraint for the specified control
		  #if TargetMacOS
		    Dim sz As size = view.IntrinsicContentSize
		    
		    Return New SOSLayoutConstraint(view.Handle, SOSLayoutConstraint.LayoutAttributes.Width, SOSLayoutConstraint.relations.Equal, sz.Width)
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, CompatibilityFlags = (TargetDesktop and (Target64Bit))
		Function Constraints(extends control as DesktopUIControl) As SOSLayoutConstraint()
		  // Returns all of the constraints attached to the specified DesktopUIControl
		  #If TargetMacOS
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

	#tag Method, Flags = &h0, CompatibilityFlags = (TargetDesktop and (Target64Bit))
		Function Constraints(extends screen as DesktopWindow) As SOSLayoutConstraint()
		  // Returns all of the constraints attached to the specified DesktopWindow
		  #If TargetMacOS
		    // @property(nonatomic, readonly) NSArray<__kindof NSLayoutConstraint *> *constraints;
		    Declare Function getConstraints Lib "Foundation" Selector "constraints" (obj As ptr) As Ptr
		    
		    Dim consts As ptr = getConstraints(WindowToView(Screen))
		    
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

	#tag Method, Flags = &h21, CompatibilityFlags = (TargetDesktop and (Target64Bit))
		Private Function Constraints(view as ptr) As SOSLayoutConstraint()
		  // Returns all of the constraints attached to the specified DesktopWindow
		  #If TargetMacOS
		    // @property(nonatomic, readonly) NSArray<__kindof NSLayoutConstraint *> *constraints;
		    Declare Function getConstraints Lib "Foundation" Selector "constraints" (obj As ptr) As Ptr
		    
		    Dim consts As ptr = getConstraints(view)
		    
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

	#tag Method, Flags = &h0, CompatibilityFlags = (TargetDesktop and (Target64Bit))
		Function ConstraintsForControl(extends screen as DesktopWindow, ctl as DesktopUIControl) As SOSLayoutConstraint()
		  // Returns the constraints attributed to a particular control.
		  #If TargetMacOS
		    Dim rv() As SOSLayoutConstraint
		    Dim ca() As SOSLayoutConstraint = Screen.Constraints
		    For i As Integer = 0 To UBound(ca)
		      If ca(i).FirstItem = ctl.Handle Then
		        rv.Add ca(i)
		      End If
		    Next
		    
		    Dim cca() As SOSLayoutConstraint = ctl.Constraints
		    For i As Integer = 0 To UBound(cca)
		      If cca(i).FirstItem = ctl.Handle Then
		        rv.Add cca(i)
		      End If
		    Next
		    
		    Return rv
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, CompatibilityFlags = (TargetDesktop and (Target64Bit))
		Sub ConvertConstraintsForControl(extends view as DesktopWindow, item as DesktopUIControl, newPriority as Double = 0)
		  // Converts all constraints for a specific DesktopUIControl on a particular DesktopWindow to SOSLayoutConstraints, changing them all to a particular Priority
		  
		  #If TargetMacOS
		    Dim ca() As SOSConstraintKit.SOSLayoutConstraint = view.constraints
		    
		    // clip the value to be between 1 and 999 so it'll be editable later
		    If newPriority > 0 Then
		      newPriority = Min(DefaultPriority, Max(1, newPriority))
		    End If
		    
		    For i As Integer = UBound(ca) DownTo 0
		      If ca(i).FirstItem = item.Handle Then
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

	#tag Method, Flags = &h0, CompatibilityFlags = (TargetDesktop and (Target64Bit))
		Sub ConvertConstraintsForControl(extends view as DesktopWindow, item as DesktopUIControl, newPriority as SOSConstraintKit.Priorities)
		  // Converts all constraints for a specific DesktopUIControl on a particular DesktopWindow to SOSLayoutConstraints, changing them all to a particular Priority
		  
		  #If TargetMacOS
		    Dim ca() As SOSLayoutConstraint = view.constraints
		    
		    Dim newConstraints() As SOSLayoutConstraint
		    
		    // Convert the enum to a double
		    Dim priority As Double = CType(newPriority, Double)
		    
		    // clip the value to be between 1 and 999 so it'll be editable later
		    priority = Min(DefaultPriority, Max(1, priority))
		    
		    For i As Integer = UBound(ca) DownTo 0
		      If ca(i).FirstItem = item.Handle Then
		        Dim c As New SOSLayoutConstraint(ca(i).FirstItem, ca(i).FirstAttribute, ca(i).relation, ca(i).SecondItem, ca(i).SecondAttribute, ca(i).Multiplier, ca(i).Offset)
		        c.Identifier = ca(i).identifier
		        If c.Identifier = "" Then
		          c.Identifier = item.Name + "_" + AttributeName(ca(i).firstAttribute)
		        End If
		        
		        If priority > 0 Then
		          c.Priority = priority
		        End If
		        c.Active = True
		        newConstraints.add c
		        
		        ca(i).active = False
		      End If
		      
		    Next
		    
		    For i As Integer = 0 To UBound(newConstraints)
		      view.AddConstraint(newConstraints(i))
		    Next
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21, CompatibilityFlags = (TargetDesktop and (Target64Bit))
		Private Sub ConvertControlToAutolayout(ctl as desktopuicontrol, useLeadingTrailing as Boolean = False)
		  // @property(copy) NSArray<__kindof NSView *> *subviews;
		  Declare Function getSubviews Lib "Foundation" Selector "subviews" (obj As ptr) As Ptr
		  Declare Sub setSubviews Lib "Foundation" Selector "setSubviews:" (obj As ptr, value As Ptr)
		  Declare Function count Lib "Foundation" Selector "count" (arr As ptr) As Integer
		  Declare Function objectAtIndex Lib "Foundation" Selector "objectAtIndex:" (arr As ptr, index As Integer) As ptr
		  // @property NSRect frame;
		  Declare Function getFrame Lib "Foundation" Selector "frame" (obj As ptr) As NSRect
		  Declare Sub setTranslatesAutoresizingMaskIntoConstraints Lib "Foundation" Selector "setTranslatesAutoresizingMaskIntoConstraints:" (obj As ptr, value As Boolean)
		  
		  Dim view As ptr = ctl.Handle
		  Dim viewRect As NSRect = getFrame(view)
		  
		  Select Case ctl
		  Case IsA DesktopRadioGroup
		    
		    Dim subviewArray As ptr = getSubviews(view)
		    Dim c As Integer = count(subviewArray)
		    Dim previousView As Ptr
		    Dim previousRect As NSRect
		    
		    // Vertical
		    If DesktopRadioGroup(ctl).Horizontal = False Then
		      setTranslatesAutoresizingMaskIntoConstraints(view, False)
		      For i As Integer = 0 To c-1
		        Dim subview As ptr = objectAtIndex(subviewArray, i)
		        Dim r As NSRect = getFrame(subview)
		        setTranslatesAutoresizingMaskIntoConstraints(subview, False)
		        
		        Dim cc As SOSLayoutConstraint
		        
		        If previousView = Nil Then
		          cc = New SOSLayoutConstraint(subview, SOSLayoutConstraint.LayoutAttributes.top, _
		          SOSLayoutConstraint.Relations.Equal, view, SOSLayoutConstraint.LayoutAttributes.top, _
		          1.0, 0)
		          cc.Active = True
		          
		        Else
		          cc = New SOSLayoutConstraint(subview, SOSLayoutConstraint.LayoutAttributes.Top, _
		          SOSLayoutConstraint.Relations.Equal, previousView, SOSLayoutConstraint.LayoutAttributes.Bottom, _
		          1.0, 8)
		          cc.Active = True
		        End If
		        
		        previousView = subview
		        previousRect = getFrame(subview)
		      Next
		      
		      Return
		    End If
		    
		    // Horizontal
		    // get the list of subviews. they should be the button views from left to right.
		    // we'll have to get each of the positions and create leading/trailing constraints instead of minX
		    For i As Integer = 0 To c-1
		      Dim subview As ptr = objectAtIndex(subviewArray, i)
		      Dim r As NSRect = getFrame(subview)
		      setTranslatesAutoresizingMaskIntoConstraints(subview, False)
		      // create the leading/trailing constraints for this particular button
		      // based on where it is in the list
		      Dim cc As SOSLayoutConstraint
		      If previousView = Nil Then
		        // constrain to the leading edge of the view
		        cc = New SOSLayoutConstraint(subview, SOSLayoutConstraint.LayoutAttributes.Leading, _
		        SOSLayoutConstraint.relations.Equal, view, SOSLayoutConstraint.LayoutAttributes.Leading, 1.0, 0)
		        cc.Active = True
		      ElseIf i = (c-1) Then
		        // constrain the trailing edge of the control to the button
		        Dim viewRight As Double = viewRect.X + viewRect.Width
		        Dim thisRight As Double = r.x + r.Width
		        Dim offset As Double = viewRight - thisRight
		        cc = New SOSLayoutConstraint(view, SOSLayoutConstraint.LayoutAttributes.Trailing, _
		        SOSLayoutConstraint.relations.Equal, view, SOSLayoutConstraint.LayoutAttributes.Trailing, 1.0, 0)
		        cc.Active = True
		      Else
		        // constrain to the previousView
		        cc = New SOSLayoutConstraint(subview, SOSLayoutConstraint.LayoutAttributes.Leading, _
		        SOSLayoutConstraint.relations.Equal, previousView, SOSLayoutConstraint.LayoutAttributes.Trailing, 1.0, 0)
		        cc.Active = True
		      End If
		      
		      // Constraint for the top position
		      cc = New SOSLayoutConstraint(subview, SOSLayoutConstraint.LayoutAttributes.CenterY, _
		      SOSLayoutConstraint.relations.Equal, view, SOSLayoutConstraint.LayoutAttributes.CenterY, 1.0, 0)
		      cc.Active = True
		      
		      previousView = subview
		      previousRect = getFrame(subview)
		    Next
		    
		    // remove the minX constraints
		    Dim ca() As SOSLayoutConstraint = constraints(view)
		    For j As Integer = 0 To UBound(ca)
		      If CType(ca(j).FirstAttribute, Integer) > 30 Then // MinX = 32, MinY = 33
		        ca(j).Active = False
		      End If
		    Next
		    
		    setTranslatesAutoresizingMaskIntoConstraints(view, False)
		    
		  Case IsA DesktopLabel
		    // @property NSTextAlignment alignment;
		    Declare Sub setAlignment Lib "Foundation" Selector "setAlignment:" (obj As ptr, value As Integer)
		    Declare Function alignment Lib "Foundation" Selector "alignment" (obj As ptr) As Integer
		    Dim label As DesktopLabel = DesktopLabel(ctl)
		    
		    setTranslatesAutoresizingMaskIntoConstraints(view, False)
		    
		    Select Case label.TextAlignment
		    Case TextAlignments.Left
		      If SystemIsRTL Then
		        setAlignment(view, 3)
		      Else
		        setAlignment(view, 1)
		      End If
		    Case TextAlignments.Center
		      setAlignment(view, 2)
		      
		    Case TextAlignments.Right
		      If SystemIsRTL Then
		        setAlignment(view, 1)
		      Else
		        setAlignment(view, 3)
		      End If
		      
		    Case TextAlignments.Default
		      // unfortunately, default = left in Xojo so this code will never run
		      setAlignment(view, 1)
		      
		    End Select
		    
		  Case Else
		    // Nothing had to be done to this control
		    Return
		    
		  End Select
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

	#tag Method, Flags = &h0, CompatibilityFlags = (TargetDesktop and (Target64Bit))
		Function DirectionalLayoutMargins(Extends view as DesktopUIControl) As NSDirectionalEdgeInsets
		  #if TargetMacOS
		    // @property(nonatomic) NSDirectionalEdgeInsets directionalLayoutMargins;
		    Declare Function getDirectionalLayoutMargins Lib "Foundation" Selector "directionalLayoutMargins" (obj As ptr) As NSDirectionalEdgeInsets
		    
		    Return getDirectionalLayoutMargins(view.Handle)
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, CompatibilityFlags = (TargetDesktop and (Target64Bit))
		Sub DirectionalLayoutMargins(Extends view as DesktopUIControl, assigns value as NSDirectionalEdgeInsets)
		  #if TargetMacOS
		    // @property(nonatomic) NSDirectionalEdgeInsets directionalLayoutMargins;
		    Declare Sub setDirectionalLayoutMargins Lib "Foundation" Selector "setDirectionalLayoutMargins:" (obj As ptr, value As NSDirectionalEdgeInsets)
		    
		    setDirectionalLayoutMargins(view.Handle, value)
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, CompatibilityFlags = (TargetDesktop and (Target64Bit))
		Function DirectionalLayoutMargins(Extends view as DesktopWindow) As NSDirectionalEdgeInsets
		  #if TargetMacOS
		    // @property(nonatomic) NSDirectionalEdgeInsets directionalLayoutMargins;
		    Declare Function getDirectionalLayoutMargins Lib "Foundation" Selector "directionalLayoutMargins" (obj As ptr) As NSDirectionalEdgeInsets
		    
		    Return getDirectionalLayoutMargins(view.Handle)
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, CompatibilityFlags = (TargetDesktop and (Target64Bit))
		Sub DirectionalLayoutMargins(Extends view as DesktopWindow, assigns value as NSDirectionalEdgeInsets)
		  #if TargetMacOS
		    // @property(nonatomic) NSDirectionalEdgeInsets directionalLayoutMargins;
		    Declare Sub setDirectionalLayoutMargins Lib "Foundation" Selector "setDirectionalLayoutMargins:" (obj As ptr, value As NSDirectionalEdgeInsets)
		    
		    setDirectionalLayoutMargins(view.Handle, value)
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, CompatibilityFlags = (TargetDesktop and (Target64Bit))
		Function FirstBaselineOffset(extends view as DesktopTextControl) As Double
		  #if TargetMacOS
		    // @property(nullable, nonatomic, strong) UIFont *font;
		    Declare Function getFont Lib "Foundation" Selector "font" (obj As ptr) As Ptr
		    
		    // @property(nonatomic, readonly) CGFloat ascender;
		    Declare Function getAscender Lib "Foundation" Selector "ascender" (obj As ptr) As Double
		    
		    Return getAscender(getFont(view.Handle))
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, CompatibilityFlags = (TargetDesktop and (Target64Bit))
		Function HuggingPriorityForAxis(Extends item as DesktopContainer, axis as SOSConstraintKit.Axis) As Double
		  #if TargetMacOS
		    // - (UILayoutPriority)contentHuggingPriorityForAxis:(UILayoutConstraintAxis)axis;
		    Declare Function contentHuggingPriorityForAxis Lib "Foundation" Selector "contentHuggingPriorityForAxis:" ( obj As ptr , axis As Integer ) As Single
		    
		    Return contentHuggingPriorityForAxis( item.Handle, CType(axis, Integer))
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, CompatibilityFlags = (TargetDesktop and (Target64Bit))
		Sub HuggingPriorityForAxis(Extends item as DesktopContainer, Axis as SOSConstraintKit.Axis, assigns priority as Double)
		  #If TargetMacOS
		    // - (void)setContentHuggingPriority:(UILayoutPriority)priority forAxis:(UILayoutConstraintAxis)axis;
		    Declare Sub setContentHuggingPriority_forAxis Lib "Foundation" Selector "setContentHuggingPriority:forAxis:" ( obj As ptr , priority As single , axis As integer )
		    
		    setContentHuggingPriority_forAxis( item.handle, priority, CType(axis, Integer))
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, CompatibilityFlags = (TargetDesktop and (Target64Bit))
		Function HuggingPriorityForAxis(Extends item as DesktopUIControl, axis as SOSConstraintKit.Axis) As Double
		  #if TargetMacOS
		    // - (UILayoutPriority)contentHuggingPriorityForAxis:(UILayoutConstraintAxis)axis;
		    Declare Function contentHuggingPriorityForAxis Lib "Foundation" Selector "contentHuggingPriorityForAxis:" ( obj As ptr , axis As Integer ) As Single
		    
		    Return contentHuggingPriorityForAxis( item.Handle, CType(axis, Integer))
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, CompatibilityFlags = (TargetDesktop and (Target64Bit))
		Sub HuggingPriorityForAxis(Extends item as DesktopUIControl, Axis as SOSConstraintKit.Axis, assigns priority as Double)
		  #if TargetMacOS
		    // - (void)setContentHuggingPriority:(UILayoutPriority)priority forAxis:(UILayoutConstraintAxis)axis;
		    Declare Sub setContentHuggingPriority_forAxis Lib "Foundation" Selector "setContentHuggingPriority:forAxis:" ( obj As ptr , priority As single , axis As integer )
		    
		    setContentHuggingPriority_forAxis( item.handle, priority, CType(axis, Integer))
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, CompatibilityFlags = (TargetDesktop and (Target64Bit))
		Function InsetsLayoutMarginsFromSafeArea(extends view as DesktopContainer) As Boolean
		  // Returns true if the control is insetting layout margins from the safe area
		  #If TargetMacOS
		    // @property(nonatomic) BOOL insetsLayoutMarginsFromSafeArea;
		    Declare Function getInsetsLayoutMarginsFromSafeArea Lib "Foundation" Selector "insetsLayoutMarginsFromSafeArea" (obj As ptr) As Boolean
		    
		    Return getInsetsLayoutMarginsFromSafeArea(view.handle)
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, CompatibilityFlags = (TargetDesktop and (Target64Bit))
		Sub InsetsLayoutMarginsFromSafeArea(extends view as DesktopContainer, assigns value as Boolean)
		  // Sets if the control is insetting layout margins from the safe area
		  #If TargetMacOS
		    
		    // @property(nonatomic) BOOL insetsLayoutMarginsFromSafeArea;
		    Declare Sub setInsetsLayoutMarginsFromSafeArea Lib "Foundation" Selector "setInsetsLayoutMarginsFromSafeArea:" (obj As ptr, value As Boolean)
		    
		    setInsetsLayoutMarginsFromSafeArea(view.handle, value)
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, CompatibilityFlags = (TargetDesktop and (Target64Bit))
		Function InsetsLayoutMarginsFromSafeArea(extends view as DesktopUIControl) As Boolean
		  // Returns true if the control is insetting layout margins from the safe area
		  #If TargetMacOS
		    // @property(nonatomic) BOOL insetsLayoutMarginsFromSafeArea;
		    Declare Function getInsetsLayoutMarginsFromSafeArea Lib "Foundation" Selector "insetsLayoutMarginsFromSafeArea" (obj As ptr) As Boolean
		    
		    Return getInsetsLayoutMarginsFromSafeArea(view.handle)
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, CompatibilityFlags = (TargetDesktop and (Target64Bit))
		Sub InsetsLayoutMarginsFromSafeArea(extends view as DesktopUIControl, assigns value as Boolean)
		  // Sets if the control is insetting layout margins from the safe area
		  #If TargetMacOS
		    
		    // @property(nonatomic) BOOL insetsLayoutMarginsFromSafeArea;
		    Declare Sub setInsetsLayoutMarginsFromSafeArea Lib "Foundation" Selector "setInsetsLayoutMarginsFromSafeArea:" (obj As ptr, value As Boolean)
		    
		    setInsetsLayoutMarginsFromSafeArea(view.handle, value)
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, CompatibilityFlags = (TargetDesktop and (Target64Bit))
		Function IntrinsicContentSize(extends view as DesktopContainer) As Size
		  // Returns the instrinsic content size for the control
		  #If TargetMacOS
		    // @property(nonatomic, readonly) CGSize intrinsicContentSize;
		    Declare Function getIntrinsicContentSize Lib "Foundation" Selector "intrinsicContentSize" (obj As ptr) As CGSize
		    
		    Dim sz As cgsize = getIntrinsicContentSize(view.handle)
		    
		    Return New size(sz.width, sz.height)
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, CompatibilityFlags = (TargetDesktop and (Target64Bit))
		Function IntrinsicContentSize(extends view as DesktopUIControl) As Size
		  // Returns the instrinsic content size for the container
		  #If TargetMacOS
		    // @property(nonatomic, readonly) CGSize intrinsicContentSize;
		    Declare Function getIntrinsicContentSize Lib "Foundation" Selector "intrinsicContentSize" (obj As ptr) As CGSize
		    
		    Dim sz As cgsize = getIntrinsicContentSize(view.handle)
		    
		    Return New size(sz.width, sz.height)
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, CompatibilityFlags = (TargetDesktop and (Target64Bit))
		Sub InvalidateIntrinsicContentSize(extends view as DesktopContainer)
		  // Asks the OS to recalculate the container's intrinsic content size
		  #If TargetMacOS
		    // - (void)invalidateIntrinsicContentSize;
		    Declare Sub invalidateIntrinsicContentSize Lib "Foundation" Selector "invalidateIntrinsicContentSize" (obj As ptr)
		    
		    invalidateIntrinsicContentSize(view.Handle)
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, CompatibilityFlags = (TargetDesktop and (Target64Bit))
		Sub InvalidateIntrinsicContentSize(extends view as DesktopUIControl)
		  // Asks the OS to recalculate the control's intrinsic content size
		  #If TargetMacOS
		    // - (void)invalidateIntrinsicContentSize;
		    Declare Sub invalidateIntrinsicContentSize Lib "Foundation" Selector "invalidateIntrinsicContentSize" (obj As ptr)
		    
		    invalidateIntrinsicContentSize(view.Handle)
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, CompatibilityFlags = (TargetDesktop and (Target64Bit))
		Sub LayoutIfNeeded(extends view as DesktopWindow)
		  // Asks the OS to update the window's layout if necessary.
		  #If TargetMacOS
		    // - (void)layoutIfNeeded;
		    Declare Sub layoutIfNeeded Lib "Foundation" Selector "layoutIfNeeded" (obj As ptr)
		    
		    layoutIfNeeded(view.Handle)
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, CompatibilityFlags = (TargetDesktop and (Target64Bit))
		Function LayoutMargins(extends view as DesktopUIControl) As UIEdgeInsets
		  // Gets the Layout Margins for the control.
		  #If TargetMacOS
		    // @property(nonatomic) UIEdgeInsets layoutMargins;
		    Declare Function getLayoutMargins Lib "Foundation" Selector "layoutMargins" (obj As ptr) As UIEdgeInsets
		    
		    Return getLayoutMargins(view.Handle)
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, CompatibilityFlags = (TargetDesktop and (Target64Bit))
		Sub LayoutMargins(extends view as DesktopUIControl, assigns value as UIEdgeInsets)
		  // Sets the Layout Margins for the control.
		  #If TargetMacOS
		    // @property(nonatomic) UIEdgeInsets layoutMargins;
		    Declare Sub setLayoutMargins Lib "Foundation" Selector "setLayoutMargins:" (obj As ptr, value As UIEdgeInsets)
		    
		    setLayoutMargins(view.Handle, value)
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, CompatibilityFlags = (TargetDesktop and (Target64Bit))
		Function LayoutMargins(extends view as DesktopWindow) As UIEdgeInsets
		  // Gets the Layout Margins for the window.
		  
		  #If TargetMacOS
		    // @property(nonatomic) UIEdgeInsets layoutMargins;
		    Declare Function getLayoutMargins Lib "Foundation" Selector "layoutMargins" (obj As ptr) As UIEdgeInsets
		    
		    Return getLayoutMargins(view.Handle)
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, CompatibilityFlags = (TargetDesktop and (Target64Bit))
		Sub LayoutMargins(extends view as DesktopWindow, assigns value as UIEdgeInsets)
		  // Gets the Layout Margins for the window.
		  
		  #If TargetMacOS
		    // @property(nonatomic) UIEdgeInsets layoutMargins;
		    
		    Declare Sub setLayoutMargins Lib "Foundation" Selector "setLayoutMargins:" (obj As ptr, value As UIEdgeInsets)
		    
		    setLayoutMargins(view.Handle, value)
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, CompatibilityFlags = (TargetDesktop and (Target64Bit))
		Function PreservesSuperviewLayoutMargins(extends view as DesktopContainer) As Boolean
		  // Returns True if the container preserves its superview's layout margins
		  #If TargetMacOS
		    // @property(nonatomic) BOOL preservesSuperviewLayoutMargins;
		    Declare Function getPreservesSuperviewLayoutMargins Lib "Foundation" Selector "preservesSuperviewLayoutMargins" (obj As ptr) As Boolean
		    
		    Return getPreservesSuperviewLayoutMargins(view.handle)
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, CompatibilityFlags = (TargetDesktop and (Target64Bit))
		Sub PreservesSuperviewLayoutMargins(extends view as DesktopContainer, assigns value as boolean)
		  // Set to True if the container should preserve its superview's layout margins
		  #If TargetMacOS
		    
		    // @property(nonatomic) BOOL preservesSuperviewLayoutMargins;
		    Declare Sub setPreservesSuperviewLayoutMargins Lib "Foundation" Selector "setPreservesSuperviewLayoutMargins:" (obj As ptr, value As Boolean)
		    
		    setPreservesSuperviewLayoutMargins(view.handle, value)
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, CompatibilityFlags = (TargetDesktop and (Target64Bit))
		Function PreservesSuperviewLayoutMargins(extends view as DesktopUIControl) As Boolean
		  // Returns True if the control preserves its superview's layout margins
		  #If TargetMacOS
		    // @property(nonatomic) BOOL preservesSuperviewLayoutMargins;
		    Declare Function getPreservesSuperviewLayoutMargins Lib "Foundation" Selector "preservesSuperviewLayoutMargins" (obj As ptr) As Boolean
		    
		    Return getPreservesSuperviewLayoutMargins(view.handle)
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, CompatibilityFlags = (TargetDesktop and (Target64Bit))
		Sub PreservesSuperviewLayoutMargins(extends view as DesktopUIControl, assigns value as boolean)
		  // Set to True if the control should preserve its superview's layout margins
		  #If TargetMacOS
		    
		    // @property(nonatomic) BOOL preservesSuperviewLayoutMargins;
		    Declare Sub setPreservesSuperviewLayoutMargins Lib "Foundation" Selector "setPreservesSuperviewLayoutMargins:" (obj As ptr, value As Boolean)
		    
		    setPreservesSuperviewLayoutMargins(view.handle, value)
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, CompatibilityFlags = (TargetDesktop and (Target64Bit))
		Sub RecreateConstraintsForAllControls(extends view as DesktopWindow)
		  // Recreates constrains for all controls on the view
		  #If TargetMacOS
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
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, CompatibilityFlags = (TargetDesktop and (Target64Bit))
		Sub RecreateConstraintsForAllControls(extends view As DesktopWindow, newPriority As Double)
		  // Recreates constrains for all controls on the view, with a specific priority
		  #If TargetMacOS
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
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, CompatibilityFlags = (TargetDesktop and (Target64Bit))
		Sub RemoveConstraint(extends control as DesktopUIControl, constraint as SOSLayoutConstraint)
		  // Removes the specified constraint from the control
		  #If TargetMacOS
		    // Bail if the constraint is nil because the app will crash
		    If constraint = Nil Then
		      Return
		    End If
		    
		    #If TargetMacOS
		      // - (void)removeConstraint:(NSLayoutConstraint *)constraint;
		      Declare Sub removeConstraint Lib "Foundation" Selector "removeConstraint:" ( obj As ptr , constraint As Ptr )
		      
		      removeConstraint(control.Handle, constraint.Handle)
		    #EndIf
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, CompatibilityFlags = (TargetDesktop and (Target64Bit))
		Sub RemoveConstraint(extends screen as DesktopWindow, constraint as SOSLayoutConstraint)
		  // Removes the specified constraint from the window
		  #If TargetMacOS
		    // Bail if the constraint is nil because the app will crash
		    If constraint = Nil Then
		      Return
		    End If
		    
		    #If TargetMacOS
		      // - (void)removeConstraint:(NSLayoutConstraint *)constraint;
		      Declare Sub removeConstraint Lib "Foundation" Selector "removeConstraint:" ( obj As ptr , constraint As Ptr )
		      
		      removeConstraint(Screen.Handle, constraint.Handle)
		    #EndIf
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, CompatibilityFlags = (TargetDesktop and (Target64Bit))
		Sub RemoveConstraintsForControl(extends view as DesktopContainer, ctl as DesktopUIControl)
		  // Removes constraints for a control from a particular container
		  #If TargetMacOS
		    Dim ca() As SOSLayoutConstraint = view.constraints
		    
		    For i As Integer = 0 To UBound(ca)
		      If ca(i).FirstItem = ctl.Handle Then
		        view.RemoveConstraint(ca(i))
		      End If
		    Next
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, CompatibilityFlags = (TargetDesktop and (Target64Bit))
		Sub RemoveConstraintsForControl(extends view as DesktopWindow, ctl as DesktopUIControl)
		  // Removes constraints for a control from a particular window
		  #If TargetMacOS
		    Dim ca() As SOSLayoutConstraint = view.constraints
		    
		    For i As Integer = 0 To UBound(ca)
		      If ca(i).FirstItem = ctl.Handle Then
		        view.RemoveConstraint(ca(i))
		      End If
		    Next
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, CompatibilityFlags = (TargetDesktop and (Target64Bit))
		Function SafeAreaInsets(view as DesktopWindow) As UIEdgeInsets
		  // Returns the safe area insets for the specified window
		  #If TargetMacOS
		    // @property(nonatomic, readonly) UIEdgeInsets safeAreaInsets;
		    Declare Function getSafeAreaInsets Lib "Foundation" Selector "safeAreaInsets" (obj As ptr) As UIEdgeInsets
		    
		    Return getSafeAreaInsets(view.Handle)
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function SystemIsRTL() As Boolean
		  // Returns True if the system is set up to use a Left to Right text orientation.
		  #If TargetMacOS
		    // @property(class, readonly, strong) NSUserDefaults *standardUserDefaults;
		    Declare Function getStandardUserDefaults Lib "Foundation" Selector "standardUserDefaults" (cls As ptr) As Ptr
		    Declare Function NSClassFromString Lib "Foundation" (name As cfstringref) As ptr
		    // - (BOOL)boolForKey:(NSString *)defaultName;
		    Declare Function boolForKey Lib "Foundation" Selector "boolForKey:" ( obj As ptr , defaultName As CFStringRef ) As Boolean
		    
		    Dim sharedDefaults As ptr = getStandardUserDefaults(NSClassFromString("NSUserDefaults"))
		    
		    Dim isRTL As Boolean  = boolForKey(sharedDefaults, "AppleTextDirection")
		    
		    Return isRTL
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, CompatibilityFlags = (TargetDesktop and (Target64Bit))
		Sub UpdateConstraints(extends control as DesktopUIControl)
		  // Asks the OS to update the constraints for a particular control.
		  #If TargetMacOS
		    // - (void)updateConstraintsIfNeeded;
		    Declare Sub updateConstraintsIfNeeded Lib "Foundation" Selector "updateConstraintsIfNeeded" (obj As ptr)
		    
		    updateConstraintsIfNeeded(control.Handle)
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, CompatibilityFlags = (TargetDesktop and (Target64Bit))
		Sub UpdateConstraints(extends screen as DesktopWindow)
		  // Asks the OS to update the constraints for a particular window.
		  #If TargetMacOS
		    // - (void)updateConstraintsIfNeeded;
		    Declare Sub updateConstraintsIfNeeded Lib "Foundation" Selector "updateConstraintsIfNeeded" (obj As ptr)
		    
		    updateConstraintsIfNeeded(screen.Handle)
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub UseIntrinsicWidth(extends ctl as DesktopUIControl)
		  // Removes the width constraint(s) so the control will use the intrinsic size
		  
		  
		  Dim ca() As SOSLayoutConstraint = ctl.Constraints
		  For i As Integer = 0 To UBound(ca)
		    If ca(i).FirstItem = ctl.handle And ca(i).FirstAttribute = SOSLayoutConstraint.LayoutAttributes.Width And ca(i).SecondItem = Nil Then
		      ca(i).Active = False
		    End If
		  Next
		  
		  ctl.WidthAnchor.ConstraintEqualToConstant(ctl.IntrinsicContentSize.Width).Active = True
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21, CompatibilityFlags = (TargetDesktop and (Target64Bit))
		Private Function WindowToView(w as DesktopWindow) As Ptr
		  Dim p As ptr = w.Handle
		  #If TargetMacOS
		    If Not w IsA DesktopContainer Then
		      // @property(strong) __kindof NSView *contentView;
		      Declare Function getContentView Lib "Foundation" Selector "contentView" (obj As ptr) As Ptr
		      p = getContentView(w.Handle)
		    End If
		  #EndIf
		  
		  Return p
		End Function
	#tag EndMethod


	#tag Property, Flags = &h1, Description = 53657420746869732070726F706572747920746F20636F6E74726F6C20746865207072696F726974792074686174206973207573656420666F72206D6574686F647320776869636820646F6E277420686176652061207072696F7269747920706172616D657465722E
		Protected DefaultPriority As Double = 999.0
	#tag EndProperty


	#tag Structure, Name = CGSize, Flags = &h21
		width as cgfloat
		height as cgfloat
	#tag EndStructure

	#tag Structure, Name = NSDirectionalEdgeInsets, Flags = &h0, Description = 53747275637475726520666F722073706563696679696E6720646972656374696F6E616C206564676520696E7365742076616C7565732E
		Bottom as CGFloat
		  Leading as CGFloat
		  Top as CGFloat
		Trailing as CGFloat
	#tag EndStructure

	#tag Structure, Name = NSRect, Flags = &h21
		X as CGFloat
		  Y as CGFloat
		  Width as CGFloat
		Height as CGFloat
	#tag EndStructure

	#tag Structure, Name = UIEdgeInsets, Flags = &h0, Description = 53747275637475726520666F722073706563696679696E67206162736F6C757465206564676520696E7365742076616C7565732E
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
