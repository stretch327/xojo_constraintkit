#tag Module
Protected Module AutolayoutExtensions
	#tag CompatibilityFlags = ( TargetIOS and ( Target64Bit ) )
	#tag Method, Flags = &h0, CompatibilityFlags = (TargetDesktop and (Target64Bit))
		Sub AddConstraint(extends control as DesktopUIControl, constraint as SOSLayoutConstraint)
		  // adds an SOSLayoutConstraint to the DesktopUIControl
		  #if TargetMacOS or TargetIOS
		    // - (void)addConstraint:(NSLayoutConstraint *)constraint;
		    Declare Sub addConstraint Lib "Foundation" Selector "addConstraint:" ( obj As ptr , constraint As Ptr )
		    
		    addConstraint(control.Handle, constraint.Handle)
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, CompatibilityFlags = (TargetDesktop and (Target64Bit))
		Sub AddConstraint(extends screen as DesktopWindow, constraint as SOSLayoutConstraint)
		  // adds an SOSLayoutConstraint to the DesktopWindow
		  #if TargetMacOS or TargetIOS
		    
		    // - (void)addConstraint:(NSLayoutConstraint *)constraint;
		    Declare Sub addConstraint Lib "Foundation" Selector "addConstraint:" ( obj As ptr , constraint As Ptr )
		    
		    addConstraint(Screen.Handle, constraint.Handle)
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, CompatibilityFlags = (TargetIOS and (Target64Bit))
		Sub AddConstraint(extends screen as MobileScreen, constraint as SOSLayoutConstraint)
		  // adds an SOSLayoutConstraint to the MobileScreen
		  #If TargetIOS
		    
		    // - (void)addConstraint:(NSLayoutConstraint *)constraint;
		    Declare Sub addConstraint Lib "Foundation" Selector "addConstraint:" ( obj As ptr , constraint As Ptr )
		    
		    addConstraint(Screen.Handle, constraint.Handle)
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, CompatibilityFlags = (TargetIOS and (Target64Bit))
		Sub AddConstraint(extends control as MobileUIControl, constraint as SOSLayoutConstraint)
		  // adds an SOSLayoutConstraint to the MobileUIControl
		  #If TargetIOS
		    // - (void)addConstraint:(NSLayoutConstraint *)constraint;
		    Declare Sub addConstraint Lib "Foundation" Selector "addConstraint:" ( obj As ptr , constraint As Ptr )
		    
		    addConstraint(control.Handle, constraint.Handle)
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

	#tag Method, Flags = &h0
		Sub AddConstraints(extends view as MobileScreen, constraints() as SOSLayoutConstraint)
		  // adds an array of SOSLayoutConstraints to the MobileScreen
		  For i As Integer = 0 To UBound(constraints)
		    constraints(i).Priority = DefaultPriority
		    view.AddConstraint(constraints(i))
		  Next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AddConstraints(extends view as MobileScreen, constraints() as SOSLayoutConstraint, priority as Double)
		  // adds an array of SOSLayoutConstraints to the MobileScreen with a particular priority
		  
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
		  // adds an array of SOSLayoutConstraints to the MobileUIControl
		  
		  For i As Integer = 0 To UBound(constraints)
		    constraints(i).Priority = DefaultPriority
		    view.AddConstraint(constraints(i))
		  Next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AddConstraints(extends view as MobileUIControl, constraints() as SOSLayoutConstraint, priority as Double)
		  // adds an array of SOSLayoutConstraints to the MobileUIControl with a specific priority
		  // throttle to valid values
		  priority = Min(Max(priority, 1.0), 1000.0)
		  
		  For i As Integer = 0 To UBound(constraints)
		    constraints(i).Priority = priority
		    view.AddConstraint(constraints(i))
		  Next
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

	#tag Method, Flags = &h0, CompatibilityFlags = (TargetDesktop and (Target64Bit))
		Function CompressionResistancePriorityForAxis(Extends item as DesktopUIControl, axis as SOSConstraintKit.Axis) As Double
		  // Gets the Compression Resistance priority for the specified Axis
		  #if TargetMacOS or TargetIOS
		    // - (UILayoutPriority)contentCompressionResistancePriorityForAxis:(UILayoutConstraintAxis)axis;
		    Declare Function contentCompressionResistancePriorityForAxis Lib "Foundation" Selector "contentCompressionResistancePriorityForAxis:" ( obj As ptr , axis As integer ) As single
		    
		    Return contentCompressionResistancePriorityForAxis(item.handle, CType(axis, Integer))
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, CompatibilityFlags = (TargetDesktop and (Target64Bit))
		Sub CompressionResistancePriorityForAxis(Extends item as DesktopUIControl, axis as SOSConstraintKit.Axis, assigns priority as double)
		  // Sets the Compression Resistance priority for the specified Axis
		  #if TargetMacOS or TargetIOS
		    // - (void)setContentCompressionResistancePriority:(UILayoutPriority)priority forAxis:(UILayoutConstraintAxis)axis;
		    Declare Sub setContentCompressionResistancePriority_forAxis Lib "Foundation" Selector "setContentCompressionResistancePriority:forAxis:" ( obj As ptr , priority As single , axis As integer )
		    
		    setContentCompressionResistancePriority_forAxis(item.handle, priority, CType(axis, Integer))
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, CompatibilityFlags = (TargetIOS and (Target64Bit))
		Function CompressionResistancePriorityForAxis(Extends item as MobileUIControl, axis as SOSConstraintKit.Axis) As Double
		  // Gets the Compression Resistance priority for the specified Axis
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

	#tag Method, Flags = &h0, CompatibilityFlags = (TargetDesktop and (Target64Bit))
		Function ConstraintForControlAttribute(extends view as DesktopWindow, ctl as DesktopUIControl, attr as SOSLayoutConstraint.LayoutAttributes) As SOSLayoutConstraint
		  // Gets a constraint for a particular attribute 
		  #if TargetMacOS or TargetIOS
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

	#tag Method, Flags = &h0, CompatibilityFlags = (TargetDesktop and (Target64Bit))
		Function ConstraintMatchingIntrinsicHeight(extends view as DesktopUIControl) As SOSLayoutConstraint
		  // Creates an intrinsic height constraint for the specified control
		  #if TargetMacOS or TargetIOS
		    Dim sz As size = view.IntrinsicContentSize
		    
		    Return New SOSLayoutConstraint(view.Handle, SOSLayoutConstraint.LayoutAttributes.Height, SOSLayoutConstraint.relations.Equal, sz.Width)
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ConstraintMatchingIntrinsicHeight(extends view as MobileUIControl) As SOSLayoutConstraint
		  // Creates an intrinsic height constraint for the specified control
		  #If TargetiOS
		    Dim sz As size = view.IntrinsicContentSize
		    
		    Return New SOSLayoutConstraint(view.Handle, SOSLayoutConstraint.LayoutAttributes.Height, SOSLayoutConstraint.relations.Equal, sz.Width)
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, CompatibilityFlags = (TargetDesktop and (Target64Bit))
		Function ConstraintMatchingIntrinsicWidth(extends view as DesktopUIControl) As SOSLayoutConstraint
		  // Creates an intrinsic width constraint for the specified control
		  #if TargetMacOS or TargetIOS
		    Dim sz As size = view.IntrinsicContentSize
		    
		    Return New SOSLayoutConstraint(view.Handle, SOSLayoutConstraint.LayoutAttributes.Width, SOSLayoutConstraint.relations.Equal, sz.Width)
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ConstraintMatchingIntrinsicWidth(extends view as MobileUIControl) As SOSLayoutConstraint
		  // Creates an intrinsic width constraint for the specified control
		  #If TargetiOS
		    Dim sz As size = view.IntrinsicContentSize
		    
		    Return New SOSLayoutConstraint(view.Handle, SOSLayoutConstraint.LayoutAttributes.Width, SOSLayoutConstraint.relations.Equal, sz.Width)
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, CompatibilityFlags = (TargetDesktop and (Target64Bit))
		Function Constraints(extends control as DesktopUIControl) As SOSLayoutConstraint()
		  // Returns all of the constraints attached to the specified DesktopUIControl
		  #If TargetMacOS Or TargetIOS
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
		  #If TargetMacOS Or TargetIOS
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

	#tag Method, Flags = &h0, CompatibilityFlags = (TargetIOS and (Target64Bit))
		Function Constraints(extends screen as MobileScreen) As SOSLayoutConstraint()
		  // Returns all of the constraints attached to the specified MobileScreen
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
		  // Returns all of the constraints attached to the specified MobileUIControl
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

	#tag Method, Flags = &h0, CompatibilityFlags = (TargetDesktop and (Target64Bit))
		Sub ConvertConstraintsForAllControls(extends view as DesktopWindow, newPriority as Double)
		  // Converts all constraints on a particular DesktopWindow to SOSLayoutConstraints, changing them all to a particular priority
		  
		  
		  #If TargetMacOS Or TargetIOS
		    For Each ctl As DesktopControl In view.controls
		      If ctl IsA DesktopUIControl Then
		        view.ConvertConstraintsForControl(DesktopUIControl(ctl), newPriority)
		      End If
		    Next
		  #EndIf
		End Sub
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

	#tag Method, Flags = &h0, CompatibilityFlags = (TargetDesktop and (Target64Bit))
		Sub ConvertConstraintsForControl(extends view as DesktopWindow, item as DesktopUIControl, newPriority as Double = 0)
		  // Converts all constraints for a specific DesktopUIControl on a particular DesktopWindow to SOSLayoutConstraints, changing them all to a particular Priority
		  
		  #If TargetMacOS Or TargetIOS
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
		  
		  #If TargetMacOS Or TargetIOS
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

	#tag Method, Flags = &h0
		Sub ConvertConstraintsForControl(extends view as MobileScreen, item as MobileUIControl, newPriority as Double = 0)
		  // Converts all constraints for a specific MobileUIControl on a particular MobileScreen to SOSLayoutConstraints, changing them all to a particular Priority
		  
		  #If TargetiOS
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

	#tag Method, Flags = &h0
		Sub ConvertConstraintsForControl(extends view as MobileScreen, item as MobileUIControl, newPriority as SOSConstraintKit.Priorities)
		  // Converts all constraints for a specific MobileUIControl on a particular MobileScreen to SOSLayoutConstraints, changing them all to a particular Priority
		  
		  #If TargetiOS
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

	#tag Method, Flags = &h0, CompatibilityFlags = (TargetDesktop and (Target64Bit))
		Sub ConvertToAutolayout(Extends w as DesktopWindow, useLeadingTrailing as Boolean = False, unconstrainWindow as boolean = False)
		  // Converts the DesktopWindow layout to one that's using constraints
		  
		  // These are just different enough that we can't combine them
		  // becaues in this one, we need both the handle of the contentview
		  // but also the window itself for getting access to its controls
		  #If TargetMacOS Or TargetIOS
		    // Make the constraints for each of the items based on their sizes, before we change anything
		    Declare Sub setTranslatesAutoresizingMaskIntoConstraints Lib "Foundation" Selector "setTranslatesAutoresizingMaskIntoConstraints:" (obj As ptr, value As Boolean)
		    
		    // Grab the info about each of the controls before we make any changes
		    // Turn off the autoresizing conversion as we go
		    Dim ctlArray() As ControlInfo
		    For Each tmp As Object In w.Controls
		      If tmp IsA DesktopUIControl Then
		        ctlArray.Add New ControlInfo(DesktopUIControl(tmp))
		        setTranslatesAutoresizingMaskIntoConstraints(DesktopUIControl(tmp).Handle, False)
		      ElseIf tmp IsA DesktopContainer Then
		        ctlArray.Add New ControlInfo(DesktopContainer(tmp))
		        setTranslatesAutoresizingMaskIntoConstraints(DesktopContainer(tmp).Handle, False)
		      End If
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
		            DesktopUIControl(ctl).TrailingAnchor.ConstraintEqualToAnchor(w.TrailingAnchor, item.Left + item.width).Active = True
		          ElseIf ctl IsA DesktopContainer Then
		            DesktopContainer(ctl).TrailingAnchor.ConstraintEqualToAnchor(w.TrailingAnchor, item.Left + item.width).Active = True
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
		      
		      If item.control IsA DesktopContainer Then
		        DesktopContainer(item.control).ConvertToAutolayout
		      End If
		    Next
		    
		  #EndIf
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, CompatibilityFlags = (TargetDesktop and (Target64Bit))
		Function DirectionalLayoutMargins(Extends view as DesktopUIControl) As NSDirectionalEdgeInsets
		  #if TargetMacOS or TargetIOS
		    // @property(nonatomic) NSDirectionalEdgeInsets directionalLayoutMargins;
		    Declare Function getDirectionalLayoutMargins Lib "Foundation" Selector "directionalLayoutMargins" (obj As ptr) As NSDirectionalEdgeInsets
		    
		    Return getDirectionalLayoutMargins(view.Handle)
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, CompatibilityFlags = (TargetDesktop and (Target64Bit))
		Sub DirectionalLayoutMargins(Extends view as DesktopUIControl, assigns value as NSDirectionalEdgeInsets)
		  #if TargetMacOS or TargetIOS
		    // @property(nonatomic) NSDirectionalEdgeInsets directionalLayoutMargins;
		    Declare Sub setDirectionalLayoutMargins Lib "Foundation" Selector "setDirectionalLayoutMargins:" (obj As ptr, value As NSDirectionalEdgeInsets)
		    
		    setDirectionalLayoutMargins(view.Handle, value)
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, CompatibilityFlags = (TargetDesktop and (Target64Bit))
		Function DirectionalLayoutMargins(Extends view as DesktopWindow) As NSDirectionalEdgeInsets
		  #if TargetMacOS or TargetIOS
		    // @property(nonatomic) NSDirectionalEdgeInsets directionalLayoutMargins;
		    Declare Function getDirectionalLayoutMargins Lib "Foundation" Selector "directionalLayoutMargins" (obj As ptr) As NSDirectionalEdgeInsets
		    
		    Return getDirectionalLayoutMargins(view.Handle)
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, CompatibilityFlags = (TargetDesktop and (Target64Bit))
		Sub DirectionalLayoutMargins(Extends view as DesktopWindow, assigns value as NSDirectionalEdgeInsets)
		  #if TargetMacOS or TargetIOS
		    // @property(nonatomic) NSDirectionalEdgeInsets directionalLayoutMargins;
		    Declare Sub setDirectionalLayoutMargins Lib "Foundation" Selector "setDirectionalLayoutMargins:" (obj As ptr, value As NSDirectionalEdgeInsets)
		    
		    setDirectionalLayoutMargins(view.Handle, value)
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function DirectionalLayoutMargins(Extends view as MobileScreen) As NSDirectionalEdgeInsets
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

	#tag Method, Flags = &h0, CompatibilityFlags = (TargetDesktop and (Target64Bit))
		Function FirstBaselineOffset(extends view as DesktopTextControl) As Double
		  #if TargetMacOS or TargetIOS
		    // @property(nullable, nonatomic, strong) UIFont *font;
		    Declare Function getFont Lib "Foundation" Selector "font" (obj As ptr) As Ptr
		    
		    // @property(nonatomic, readonly) CGFloat ascender;
		    Declare Function getAscender Lib "Foundation" Selector "ascender" (obj As ptr) As Double
		    
		    Return getAscender(getFont(view.Handle))
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function FirstBaselineOffset(extends view as MobileTextField) As Double
		  #If TargetiOS
		    // @property(nullable, nonatomic, strong) UIFont *font;
		    Declare Function getFont Lib "Foundation" Selector "font" (obj As ptr) As Ptr
		    
		    // @property(nonatomic, readonly) CGFloat ascender;
		    Declare Function getAscender Lib "Foundation" Selector "ascender" (obj As ptr) As Double
		    
		    Return getAscender(getFont(view.Handle))
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, CompatibilityFlags = (TargetDesktop and (Target64Bit))
		Function HuggingPriorityForAxis(Extends item as DesktopUIControl, axis as SOSConstraintKit.Axis) As Double
		  #if TargetMacOS or TargetIOS
		    // - (UILayoutPriority)contentHuggingPriorityForAxis:(UILayoutConstraintAxis)axis;
		    Declare Function contentHuggingPriorityForAxis Lib "Foundation" Selector "contentHuggingPriorityForAxis:" ( obj As ptr , axis As Integer ) As Single
		    
		    Return contentHuggingPriorityForAxis( item.Handle, CType(axis, Integer))
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, CompatibilityFlags = (TargetDesktop and (Target64Bit))
		Sub HuggingPriorityForAxis(Extends item as DesktopUIControl, Axis as SOSConstraintKit.Axis, assigns priority as Double)
		  #if TargetMacOS or TargetIOS
		    // - (void)setContentHuggingPriority:(UILayoutPriority)priority forAxis:(UILayoutConstraintAxis)axis;
		    Declare Sub setContentHuggingPriority_forAxis Lib "Foundation" Selector "setContentHuggingPriority:forAxis:" ( obj As ptr , priority As single , axis As integer )
		    
		    setContentHuggingPriority_forAxis( item.handle, priority, CType(axis, Integer))
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function HuggingPriorityForAxis(Extends item as MobileUIControl, axis as SOSConstraintKit.Axis) As Double
		  #If TargetIOS
		    // - (UILayoutPriority)contentHuggingPriorityForAxis:(UILayoutConstraintAxis)axis;
		    Declare Function contentHuggingPriorityForAxis Lib "Foundation" Selector "contentHuggingPriorityForAxis:" ( obj As ptr , axis As Integer ) As Single
		    
		    Return contentHuggingPriorityForAxis( item.Handle, CType(axis, Integer))
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub HuggingPriorityForAxis(Extends item as MobileUIControl, Axis as SOSConstraintKit.Axis, assigns priority as Double)
		  #If TargetIOS
		    // - (void)setContentHuggingPriority:(UILayoutPriority)priority forAxis:(UILayoutConstraintAxis)axis;
		    Declare Sub setContentHuggingPriority_forAxis Lib "Foundation" Selector "setContentHuggingPriority:forAxis:" ( obj As ptr , priority As single , axis As integer )
		    
		    setContentHuggingPriority_forAxis( item.handle, priority, CType(axis, Integer))
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, CompatibilityFlags = (TargetDesktop and (Target64Bit))
		Function InsetsLayoutMarginsFromSafeArea(extends view as DesktopUIControl) As Boolean
		  #if TargetMacOS or TargetIOS
		    // @property(nonatomic) BOOL insetsLayoutMarginsFromSafeArea;
		    Declare Function getInsetsLayoutMarginsFromSafeArea Lib "Foundation" Selector "insetsLayoutMarginsFromSafeArea" (obj As ptr) As Boolean
		    
		    Return getInsetsLayoutMarginsFromSafeArea(view.handle)
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, CompatibilityFlags = (TargetDesktop and (Target64Bit))
		Sub InsetsLayoutMarginsFromSafeArea(extends view as DesktopUIControl, assigns value as Boolean)
		  #if TargetMacOS or TargetIOS
		    
		    // @property(nonatomic) BOOL insetsLayoutMarginsFromSafeArea;
		    Declare Sub setInsetsLayoutMarginsFromSafeArea Lib "Foundation" Selector "setInsetsLayoutMarginsFromSafeArea:" (obj As ptr, value As Boolean)
		    
		    setInsetsLayoutMarginsFromSafeArea(view.handle, value)
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function InsetsLayoutMarginsFromSafeArea(extends view as MobileUIControl) As Boolean
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

	#tag Method, Flags = &h0, CompatibilityFlags = (TargetDesktop and (Target64Bit))
		Function IntrinsicContentSize(extends view as DesktopUIControl) As Size
		  #if TargetMacOS or TargetIOS
		    // @property(nonatomic, readonly) CGSize intrinsicContentSize;
		    Declare Function getIntrinsicContentSize Lib "Foundation" Selector "intrinsicContentSize" (obj As ptr) As CGSize
		    
		    Dim sz As cgsize = getIntrinsicContentSize(view.handle)
		    
		    Return New size(sz.width, sz.height)
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function IntrinsicContentSize(extends view as MobileUIControl) As Size
		  #If TargetiOS
		    // @property(nonatomic, readonly) CGSize intrinsicContentSize;
		    Declare Function getIntrinsicContentSize Lib "Foundation" Selector "intrinsicContentSize" (obj As ptr) As CGSize
		    
		    Dim sz As cgsize = getIntrinsicContentSize(view.handle)
		    
		    Return New size(sz.width, sz.height)
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, CompatibilityFlags = (TargetDesktop and (Target64Bit))
		Sub InvalidateIntrinsicContentSize(extends view as DesktopUIControl)
		  #if TargetMacOS or TargetIOS
		    // - (void)invalidateIntrinsicContentSize;
		    Declare Sub invalidateIntrinsicContentSize Lib "Foundation" Selector "invalidateIntrinsicContentSize" (obj As ptr)
		    
		    invalidateIntrinsicContentSize(view.Handle)
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub InvalidateIntrinsicContentSize(extends view as MobileUIControl)
		  #If TargetiOS
		    // - (void)invalidateIntrinsicContentSize;
		    Declare Sub invalidateIntrinsicContentSize Lib "Foundation" Selector "invalidateIntrinsicContentSize" (obj As ptr)
		    
		    invalidateIntrinsicContentSize(view.Handle)
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, CompatibilityFlags = (TargetDesktop and (Target64Bit))
		Sub LayoutIfNeeded(extends view as DesktopWindow)
		  #if TargetMacOS or TargetIOS
		    // - (void)layoutIfNeeded;
		    Declare Sub layoutIfNeeded Lib "Foundation" Selector "layoutIfNeeded" (obj As ptr)
		    
		    layoutIfNeeded(view.Handle)
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub LayoutIfNeeded(extends view as MobileScreen)
		  #If TargetiOS
		    // - (void)layoutIfNeeded;
		    Declare Sub layoutIfNeeded Lib "Foundation" Selector "layoutIfNeeded" (obj As ptr)
		    
		    layoutIfNeeded(view.Handle)
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, CompatibilityFlags = (TargetDesktop and (Target64Bit))
		Function LayoutMargins(extends view as DesktopUIControl) As UIEdgeInsets
		  // @property(nonatomic) UIEdgeInsets layoutMargins;
		  Declare Function getLayoutMargins Lib "Foundation" Selector "layoutMargins" (obj As ptr) As UIEdgeInsets
		  
		  return getLayoutMargins(view.Handle)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, CompatibilityFlags = (TargetDesktop and (Target64Bit))
		Sub LayoutMargins(extends view as DesktopUIControl, assigns value as UIEdgeInsets)
		  // @property(nonatomic) UIEdgeInsets layoutMargins;
		  Declare Sub setLayoutMargins Lib "Foundation" Selector "setLayoutMargins:" (obj As ptr, value As UIEdgeInsets)
		  
		  setLayoutMargins(view.Handle, value)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, CompatibilityFlags = (TargetDesktop and (Target64Bit))
		Function LayoutMargins(extends view as DesktopWindow) As UIEdgeInsets
		  // @property(nonatomic) UIEdgeInsets layoutMargins;
		  Declare Function getLayoutMargins Lib "Foundation" Selector "layoutMargins" (obj As ptr) As UIEdgeInsets
		  
		  return getLayoutMargins(view.Handle)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, CompatibilityFlags = (TargetDesktop and (Target64Bit))
		Sub LayoutMargins(extends view as DesktopWindow, assigns value as UIEdgeInsets)
		  // @property(nonatomic) UIEdgeInsets layoutMargins;
		  Declare Sub setLayoutMargins Lib "Foundation" Selector "setLayoutMargins:" (obj As ptr, value As UIEdgeInsets)
		  
		  setLayoutMargins(view.Handle, value)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function LayoutMargins(extends view as MobileScreen) As UIEdgeInsets
		  // @property(nonatomic) UIEdgeInsets layoutMargins;
		  Declare Function getLayoutMargins Lib "Foundation" Selector "layoutMargins" (obj As ptr) As UIEdgeInsets
		  
		  return getLayoutMargins(view.Handle)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub LayoutMargins(extends view as MobileScreen, assigns value as UIEdgeInsets)
		  // @property(nonatomic) UIEdgeInsets layoutMargins;
		  Declare Sub setLayoutMargins Lib "Foundation" Selector "setLayoutMargins:" (obj As ptr, value As UIEdgeInsets)
		  
		  setLayoutMargins(view.Handle, value)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function LayoutMargins(extends view as MobileUIControl) As UIEdgeInsets
		  // @property(nonatomic) UIEdgeInsets layoutMargins;
		  Declare Function getLayoutMargins Lib "Foundation" Selector "layoutMargins" (obj As ptr) As UIEdgeInsets
		  
		  return getLayoutMargins(view.Handle)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub LayoutMargins(extends view as MobileUIControl, assigns value as UIEdgeInsets)
		  // @property(nonatomic) UIEdgeInsets layoutMargins;
		  Declare Sub setLayoutMargins Lib "Foundation" Selector "setLayoutMargins:" (obj As ptr, value As UIEdgeInsets)
		  
		  setLayoutMargins(view.Handle, value)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, CompatibilityFlags = (TargetDesktop and (Target64Bit))
		Function PreservesSuperviewLayoutMargins(extends view as DesktopUIControl) As Boolean
		  #if TargetMacOS or TargetIOS
		    // @property(nonatomic) BOOL preservesSuperviewLayoutMargins;
		    Declare Function getPreservesSuperviewLayoutMargins Lib "Foundation" Selector "preservesSuperviewLayoutMargins" (obj As ptr) As Boolean
		    
		    Return getPreservesSuperviewLayoutMargins(view.handle)
		    
		    // // @property(nonatomic) BOOL preservesSuperviewLayoutMargins;
		    // Declare Sub setPreservesSuperviewLayoutMargins Lib "Foundation" Selector "setPreservesSuperviewLayoutMargins:" (obj As ptr, value As Boolean)
		    // 
		    // setPreservesSuperviewLayoutMargins(mObj, value)
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, CompatibilityFlags = (TargetDesktop and (Target64Bit))
		Sub PreservesSuperviewLayoutMargins(extends view as DesktopUIControl, assigns value as boolean)
		  #if TargetMacOS or TargetIOS
		    
		    // @property(nonatomic) BOOL preservesSuperviewLayoutMargins;
		    Declare Sub setPreservesSuperviewLayoutMargins Lib "Foundation" Selector "setPreservesSuperviewLayoutMargins:" (obj As ptr, value As Boolean)
		    
		    setPreservesSuperviewLayoutMargins(view.handle, value)
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function PreservesSuperviewLayoutMargins(extends view as MobileUIControl) As Boolean
		  #If TargetiOS
		    // @property(nonatomic) BOOL preservesSuperviewLayoutMargins;
		    Declare Function getPreservesSuperviewLayoutMargins Lib "Foundation" Selector "preservesSuperviewLayoutMargins" (obj As ptr) As Boolean
		    
		    Return getPreservesSuperviewLayoutMargins(view.handle)
		    
		    // // @property(nonatomic) BOOL preservesSuperviewLayoutMargins;
		    // Declare Sub setPreservesSuperviewLayoutMargins Lib "Foundation" Selector "setPreservesSuperviewLayoutMargins:" (obj As ptr, value As Boolean)
		    // 
		    // setPreservesSuperviewLayoutMargins(mObj, value)
		    
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

	#tag Method, Flags = &h0, CompatibilityFlags = (TargetDesktop and (Target64Bit))
		Sub RecreateConstraintsForAllControls(extends view as DesktopWindow)
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

	#tag Method, Flags = &h0, CompatibilityFlags = (TargetDesktop and (Target64Bit))
		Sub RecreateConstraintsForAllControls(extends view As DesktopWindow, newPriority As Double)
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

	#tag Method, Flags = &h0
		Sub RecreateConstraintsForAllControls(extends view as mobilescreen)
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

	#tag Method, Flags = &h0, CompatibilityFlags = (TargetDesktop and (Target64Bit))
		Sub RemoveConstraint(extends control as DesktopUIControl, constraint as SOSLayoutConstraint)
		  // Bail if the constraint is nil because the app will crash
		  If constraint = Nil Then
		    Return
		  End If
		  
		  #if TargetMacOS or TargetIOS
		    // - (void)removeConstraint:(NSLayoutConstraint *)constraint;
		    Declare Sub removeConstraint Lib "Foundation" Selector "removeConstraint:" ( obj As ptr , constraint As Ptr )
		    
		    removeConstraint(control.Handle, constraint.Handle)
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, CompatibilityFlags = (TargetDesktop and (Target64Bit))
		Sub RemoveConstraint(extends screen as DesktopWindow, constraint as SOSLayoutConstraint)
		  // Bail if the constraint is nil because the app will crash
		  If constraint = Nil Then
		    Return
		  End If
		  
		  #if TargetMacOS or TargetIOS
		    // - (void)removeConstraint:(NSLayoutConstraint *)constraint;
		    Declare Sub removeConstraint Lib "Foundation" Selector "removeConstraint:" ( obj As ptr , constraint As Ptr )
		    
		    removeConstraint(screen.Handle, constraint.Handle)
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, CompatibilityFlags = (TargetIOS and (Target64Bit))
		Sub RemoveConstraint(extends screen as MobileScreen, constraint as SOSLayoutConstraint)
		  // Bail if the constraint is nil because the app will crash
		  If constraint = Nil Then
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
		  // Bail if the constraint is nil because the app will crash
		  If constraint = Nil Then
		    Return
		  End If
		  
		  #If TargetIOS
		    // - (void)removeConstraint:(NSLayoutConstraint *)constraint;
		    Declare Sub removeConstraint Lib "Foundation" Selector "removeConstraint:" ( obj As ptr , constraint As Ptr )
		    
		    removeConstraint(control.Handle, constraint.Handle)
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, CompatibilityFlags = (TargetDesktop and (Target64Bit))
		Sub RemoveConstraintsForControl(extends view as DesktopUIControl, ctl as DesktopUIControl)
		  Dim ca() As SOSLayoutConstraint = view.constraints
		  
		  For i As Integer = 0 To UBound(ca)
		    If ca(i).FirstItem = ctl.Handle Then
		      view.RemoveConstraint(ca(i))
		    End If
		  Next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, CompatibilityFlags = (TargetDesktop and (Target64Bit))
		Sub RemoveConstraintsForControl(extends view as DesktopWindow, ctl as DesktopUIControl)
		  Dim ca() As SOSLayoutConstraint = view.constraints
		  
		  For i As Integer = 0 To UBound(ca)
		    If ca(i).FirstItem = ctl.Handle Then
		      view.RemoveConstraint(ca(i))
		    End If
		  Next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub RemoveConstraintsForControl(extends view as MobileScreen, ctl as MobileUIControl)
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
		  Dim ca() As SOSLayoutConstraint = view.constraints
		  
		  For i As Integer = 0 To UBound(ca)
		    If ca(i).FirstItem = ctl.Handle Then
		      view.RemoveConstraint(ca(i))
		    End If
		  Next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, CompatibilityFlags = (TargetDesktop and (Target64Bit))
		Function SafeAreaInsets(view as DesktopWindow) As UIEdgeInsets
		  #if TargetMacOS or TargetIOS
		    // @property(nonatomic, readonly) UIEdgeInsets safeAreaInsets;
		    Declare Function getSafeAreaInsets Lib "Foundation" Selector "safeAreaInsets" (obj As ptr) As UIEdgeInsets
		    
		    Return getSafeAreaInsets(view.Handle)
		    
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function SafeAreaInsets(view as MobileScreen) As UIEdgeInsets
		  #If TargetiOS
		    // @property(nonatomic, readonly) UIEdgeInsets safeAreaInsets;
		    Declare Function getSafeAreaInsets Lib "Foundation" Selector "safeAreaInsets" (obj As ptr) As UIEdgeInsets
		    
		    Return getSafeAreaInsets(view.Handle)
		    
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, CompatibilityFlags = (TargetDesktop and (Target64Bit))
		Sub UpdateConstraints(extends control as DesktopUIControl)
		  #if TargetMacOS or TargetIOS
		    // - (void)updateConstraintsIfNeeded;
		    Declare Sub updateConstraintsIfNeeded Lib "Foundation" Selector "updateConstraintsIfNeeded" (obj As ptr)
		    
		    updateConstraintsIfNeeded(control.Handle)
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, CompatibilityFlags = (TargetDesktop and (Target64Bit))
		Sub UpdateConstraints(extends screen as DesktopWindow)
		  #If TargetMacOS Or TargetIOS
		    // - (void)updateConstraintsIfNeeded;
		    Declare Sub updateConstraintsIfNeeded Lib "Foundation" Selector "updateConstraintsIfNeeded" (obj As ptr)
		    
		    updateConstraintsIfNeeded(screen.handle)
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub UpdateConstraints(extends screen as MobileScreen)
		  #If TargetIOS
		    // - (void)updateConstraintsIfNeeded;
		    Declare Sub updateConstraintsIfNeeded Lib "Foundation" Selector "updateConstraintsIfNeeded" (obj As ptr)
		    
		    updateConstraintsIfNeeded(screen.Handle)
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub UpdateConstraints(extends control as MobileUIControl)
		  #If TargetIOS
		    // - (void)updateConstraintsIfNeeded;
		    Declare Sub updateConstraintsIfNeeded Lib "Foundation" Selector "updateConstraintsIfNeeded" (obj As ptr)
		    
		    updateConstraintsIfNeeded(control.Handle)
		  #EndIf
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


	#tag Property, Flags = &h1
		Protected DefaultPriority As Double = 999.0
	#tag EndProperty


	#tag Structure, Name = CGSize, Flags = &h21
		width as cgfloat
		height as cgfloat
	#tag EndStructure

	#tag Structure, Name = NSDirectionalEdgeInsets, Flags = &h0
		Bottom as CGFloat
		  Leading as CGFloat
		  Top as CGFloat
		Trailing as CGFloat
	#tag EndStructure

	#tag Structure, Name = UIEdgeInsets, Flags = &h0
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
