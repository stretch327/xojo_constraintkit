#tag Module
Protected Module AutolayoutExtensions
	#tag Method, Flags = &h0, CompatibilityFlags = (TargetIOS and (Target64Bit))
		Sub AddConstraint(extends screen as MobileScreen, constraint as NSLayoutConstraint)
		  #If TargetIOS
		    
		    // - (void)addConstraint:(NSLayoutConstraint *)constraint;
		    Declare Sub addConstraint Lib "Foundation" Selector "addConstraint:" ( obj As ptr , constraint As Ptr )
		    
		    addConstraint(Screen.Handle, constraint.Handle)
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, CompatibilityFlags = (TargetIOS and (Target64Bit))
		Sub AddConstraint(extends control as MobileUIControl, constraint as NSLayoutConstraint)
		  #If TargetIOS
		    // - (void)addConstraint:(NSLayoutConstraint *)constraint;
		    Declare Sub addConstraint Lib "Foundation" Selector "addConstraint:" ( obj As ptr , constraint As Ptr )
		    
		    addConstraint(control.Handle, constraint.Handle)
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AddConstraints(extends view as MobileScreen, constraints() as NSLayoutConstraint)
		  
		  For i As Integer = 0 To UBound(constraints)
		    constraints(i).Priority = DefaultPriority
		    view.AddConstraint(constraints(i))
		  Next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AddConstraints(extends view as MobileScreen, constraints() as NSLayoutConstraint, priority as Double)
		  // throttle to valid values
		  priority = Min(Max(priority, 1.0), 1000.0)
		  
		  For i As Integer = 0 To UBound(constraints)
		    constraints(i).Priority = priority
		    view.AddConstraint(constraints(i))
		  Next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AddConstraints(extends view as MobileUIControl, constraints() as NSLayoutConstraint)
		  
		  For i As Integer = 0 To UBound(constraints)
		    constraints(i).Priority = DefaultPriority
		    view.AddConstraint(constraints(i))
		  Next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AddConstraints(extends view as MobileUIControl, constraints() as NSLayoutConstraint, priority as Double)
		  // throttle to valid values
		  priority = Min(Max(priority, 1.0), 1000.0)
		  
		  For i As Integer = 0 To UBound(constraints)
		    constraints(i).Priority = priority
		    view.AddConstraint(constraints(i))
		  Next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, CompatibilityFlags = (TargetIOS and (Target64Bit))
		Function CompressionResistancePriorityForAxis(Extends item as MobileUIControl, axis as AutolayoutExtensions.Axis) As Double
		  #If TargetIOS
		    Declare Function NSClassFromString Lib "Foundation" (name As cfstringref) As ptr
		    
		    // - (double)contentCompressionResistancePriorityForAxis:(UILayoutConstraintAxis)axis forView:(UIView *)view;
		    Declare Function contentCompressionResistancePriorityForAxis_forView Lib "Foundation" Selector "contentCompressionResistancePriorityForAxis:forView:" ( obj As ptr , axis As Integer , view As Ptr ) As Double
		    
		    Return contentCompressionResistancePriorityForAxis_forView(NSClassFromString("SOSLayoutConstraint"), CType(axis, Integer), item.handle)
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, CompatibilityFlags = (TargetIOS and (Target64Bit))
		Sub CompressionResistancePriorityForAxis(Extends item as MobileUIControl, priority as single, axis as AutolayoutExtensions.Axis)
		  #If TargetIOS
		    Declare Function NSClassFromString Lib "Foundation" (name As cfstringref) As ptr
		    
		    // - (void)setContentCompressionResistancePriority:(double)priority forAxis:(UILayoutConstraintAxis)axis forView:(UIView *)view;
		    Declare Sub setContentCompressionResistancePriority_forAxis_forView Lib "Foundation" Selector "setContentCompressionResistancePriority:forAxis:forView:" ( obj As ptr , priority As Single , axis As Integer , view As Ptr )
		    
		    setContentCompressionResistancePriority_forAxis_forView(NSClassFromString("SOSLayoutConstraint"), priority, CType(axis, Integer), item.handle)
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ConstraintForControlAttribute(extends view as MobileScreen, ctl as mobileUIControl, attr as NSLayoutConstraint.LayoutAttributes) As NSLayoutConstraint
		  Dim ca() As NSLayoutConstraint = view.Constraints
		  
		  For i As Integer = 0 To UBound(ca)
		    If ca(i).FirstItem = ctl.Handle Then
		      If ca(i).FirstAttribute = attr Then
		        Return ca(i)
		      End If
		    End If
		  Next
		  
		  return nil
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ConstraintMatchingIntrinsicWidth(extends view as MobileUIControl) As NSLayoutConstraint
		  Dim sz As size = view.IntrinsicContentSize
		  
		  Return New NSLayoutConstraint(view.Handle, NSLayoutConstraint.LayoutAttributes.Width, NSLayoutConstraint.relations.Equal, sz.Width)
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, CompatibilityFlags = (TargetIOS and (Target64Bit))
		Function Constraints(extends screen as MobileScreen) As NSLayoutConstraint()
		  #If TargetIOS
		    // @property(nonatomic, readonly) NSArray<__kindof NSLayoutConstraint *> *constraints;
		    Declare Function getConstraints Lib "Foundation" Selector "constraints" (obj As ptr) As Ptr
		    
		    Dim consts As ptr = getConstraints(screen.Handle)
		    
		    Declare Function count Lib "Foundation" Selector "count" (obj As ptr) As Integer
		    // - (ObjectType)objectAtIndex:(NSUInteger)index;
		    Declare Function objectAtIndex Lib "Foundation" Selector "objectAtIndex:" ( obj As ptr , index As Integer ) As Ptr
		    
		    Dim c As Integer = count(consts)
		    
		    Dim ca() As NSLayoutConstraint
		    For i As Integer = 0 To c-1
		      ca.Add NSLayoutConstraint.Create(objectAtIndex(consts, i))
		    Next
		    
		    Return ca
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, CompatibilityFlags = (TargetIOS and (Target64Bit))
		Function Constraints(extends control as MobileUIControl) As NSLayoutConstraint()
		  #If TargetIOS
		    // @property(nonatomic, readonly) NSArray<__kindof NSLayoutConstraint *> *constraints;
		    Declare Function getConstraints Lib "Foundation" Selector "constraints" (obj As ptr) As Ptr
		    
		    Dim consts As ptr = getConstraints(control.Handle)
		    
		    Declare Function count Lib "Foundation" Selector "count" (obj As ptr) As Integer
		    // - (ObjectType)objectAtIndex:(NSUInteger)index;
		    Declare Function objectAtIndex Lib "Foundation" Selector "objectAtIndex:" ( obj As ptr , index As Integer ) As Ptr
		    
		    Dim c As Integer = count(consts)
		    
		    Dim ca() As NSLayoutConstraint
		    For i As Integer = 0 To c-1
		      ca.Add NSLayoutConstraint.Create(objectAtIndex(consts, i))
		    Next
		    
		    return ca
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ConvertConstraintsForAllControls(extends view as MobileScreen, newPriority as Double)
		  For Each ctl As MobileControl In view.controls
		    If ctl IsA MobileUIControl Then
		      view.ConvertConstraintsForControl(MobileUIControl(ctl), newPriority)
		    End If
		  Next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ConvertConstraintsForControl(extends view as MobileScreen, item as MobileUIControl, newPriority as Double = 0)
		  #If TargetiOS
		    Dim ca() As Autolayout.NSLayoutConstraint = view.constraints
		    
		    Dim newConstraints() As NSLayoutConstraint
		    
		    // clip the value to be between 1 and 999 so it'll be editable later
		    If newPriority > 0 Then
		      newPriority = Min(DefaultPriority, Max(1, newPriority))
		    End If
		    
		    For i As Integer = UBound(ca) DownTo 0
		      If ca(i).FirstItem = item.Handle Then
		        Dim c As New NSLayoutConstraint(ca(i).FirstItem, ca(i).FirstAttribute, ca(i).relation, ca(i).SecondItem, ca(i).SecondAttribute, ca(i).Multiplier, ca(i).Offset)
		        c.Identifier = ca(i).identifier
		        If newPriority > 0 Then
		          c.Priority = newPriority
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
		Sub ConvertConstraintsForControl(extends view as MobileScreen, item as MobileUIControl, newPriority as Priorities)
		  #If TargetiOS
		    Dim ca() As NSLayoutConstraint = view.constraints
		    
		    Dim newConstraints() As NSLayoutConstraint
		    
		    // Convert the enum to a double
		    Dim priority As Double = CType(newPriority, Double)
		    
		    // clip the value to be between 1 and 999 so it'll be editable later
		    priority = Min(DefaultPriority, Max(1, priority))
		    
		    For i As Integer = UBound(ca) DownTo 0
		      If ca(i).FirstItem = item.Handle Then
		        Dim c As New NSLayoutConstraint(ca(i).FirstItem, ca(i).FirstAttribute, ca(i).relation, ca(i).SecondItem, ca(i).SecondAttribute, ca(i).Multiplier, ca(i).Offset)
		        c.Identifier = ca(i).identifier
		        If priority > 0 Then
		          c.Priority = priority
		        End If
		        c.Active = True
		        newConstraints.add c
		        
		        ca(i).active = False
		      End If
		      
		      If ca(i).SecondItem = item.Handle Then
		        // these are actually backwards, but we'll recreate them forwards
		        Dim c As New NSLayoutConstraint(ca(i).secondItem, ca(i).secondattribute, ca(i).relation, ca(i).firstitem, ca(i).firstattribute, ca(i).multiplier, ca(i).offset)
		        c.Identifier = ca(i).identifier
		        If priority > 0 Then
		          c.Priority = priority
		        End If
		        c.Active = True
		        newConstraints.Add c
		        
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

	#tag Method, Flags = &h0
		Function FirstBaselineOffset(extends view as MobileTextField) As Double
		  // @property(nullable, nonatomic, strong) UIFont *font;
		  Declare Function getFont Lib "Foundation" Selector "font" (obj As ptr) As Ptr
		  
		  // @property(nonatomic, readonly) CGFloat ascender;
		  Declare Function getAscender Lib "Foundation" Selector "ascender" (obj As ptr) As Double
		  
		  return getAscender(getFont(view.Handle))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function HuggingPriorityForAxis(Extends item as MobileUIControl, axis as AutolayoutExtensions.Axis) As Integer
		  #If TargetIOS
		    Declare Function NSClassFromString Lib "Foundation" (name As cfstringref) As ptr
		    
		    // - (double)contentHuggingPriorityForAxis:(UILayoutConstraintAxis)axis forView:(UIView *)view;
		    Declare Function contentHuggingPriorityForAxis_forView Lib "Foundation" Selector "contentHuggingPriorityForAxis:forView:" ( obj As ptr , axis As Integer , view As Ptr ) As Double
		    
		    Return contentHuggingPriorityForAxis_forView(NSClassFromString("SOSLayoutConstraint"), CType(axis, Integer), item.Handle)
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub HuggingPriorityForAxis(Extends item as MobileUIControl, priority as Single, Axis as AutolayoutExtensions.Axis)
		  #If TargetIOS
		    Declare Function NSClassFromString Lib "Foundation" (name As cfstringref) As ptr
		    
		    // - (void)setContentHuggingPriority:(double)priority forAxis:(UILayoutConstraintAxis)axis forView:(UIView *)view;
		    Declare Sub setContentHuggingPriority_forAxis_forView Lib "Foundation" Selector "setContentHuggingPriority:forAxis:forView:" ( obj As ptr , priority As Single , axis As Integer , view As Ptr )
		    
		    setContentHuggingPriority_forAxis_forView(NSClassFromString("SOSLayoutConstraint"), priority, CType(axis, Integer), item.handle)
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

	#tag Method, Flags = &h0
		Function IntrinsicContentSize(extends view as MobileUIControl) As Size
		  // @property(nonatomic, readonly) CGSize intrinsicContentSize;
		  Declare Function getIntrinsicContentSize Lib "Foundation" Selector "intrinsicContentSize" (obj As ptr) As CGSize
		  
		  Dim sz As cgsize = getIntrinsicContentSize(view.handle)
		  
		  return new size(sz.width, sz.height)
		  
		End Function
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

	#tag Method, Flags = &h0
		Sub RecreateConstraintsForAllControls(extends view as mobilescreen)
		  Dim ca() As Autolayout.NSLayoutConstraint = view.constraints
		  
		  Dim newConstraints() As NSLayoutConstraint
		  
		  For i As Integer = UBound(ca) DownTo 0
		    Dim c As New NSLayoutConstraint(ca(i).FirstItem, ca(i).FirstAttribute, ca(i).relation, ca(i).SecondItem, ca(i).SecondAttribute, ca(i).Multiplier, ca(i).Offset)
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
		Sub RecreateConstraintsForAllControls(extends view as mobilescreen, newPriority as single)
		  Dim ca() As Autolayout.NSLayoutConstraint = view.constraints
		  
		  Dim newConstraints() As NSLayoutConstraint
		  
		  // clip the value to be between 1 and 999 so it'll be editable later
		  If newPriority > 0 Then
		    newPriority = Min(DefaultPriority, Max(1, newPriority))
		  End If
		  
		  For i As Integer = UBound(ca) DownTo 0
		    Dim c As New NSLayoutConstraint(ca(i).FirstItem, ca(i).FirstAttribute, ca(i).relation, ca(i).SecondItem, ca(i).SecondAttribute, ca(i).Multiplier, ca(i).Offset)
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
		Sub RemoveConstraint(extends screen as MobileScreen, constraint as NSLayoutConstraint)
		  #If TargetIOS
		    // - (void)removeConstraint:(NSLayoutConstraint *)constraint;
		    Declare Sub removeConstraint Lib "Foundation" Selector "removeConstraint:" ( obj As ptr , constraint As Ptr )
		    
		    removeConstraint(screen.Handle, constraint.Handle)
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, CompatibilityFlags = (TargetIOS and (Target64Bit))
		Sub RemoveConstraint(extends control as MobileUIControl, constraint as NSLayoutConstraint)
		  #If TargetIOS
		    // - (void)removeConstraint:(NSLayoutConstraint *)constraint;
		    Declare Sub removeConstraint Lib "Foundation" Selector "removeConstraint:" ( obj As ptr , constraint As Ptr )
		    
		    removeConstraint(control.Handle, constraint.Handle)
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function SafeAreaInsets(view as MobileScreen) As UIEdgeInsets
		  // @property(nonatomic, readonly) UIEdgeInsets safeAreaInsets;
		  Declare Function getSafeAreaInsets Lib "Foundation" Selector "safeAreaInsets" (obj As ptr) As UIEdgeInsets
		  
		  return getSafeAreaInsets(view.Handle)
		  
		  
		End Function
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


	#tag Property, Flags = &h1
		Protected DefaultPriority As Single = 999.0
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


	#tag Enum, Name = Axis, Flags = &h0
		Horizontal
		Vertical
	#tag EndEnum

	#tag Enum, Name = Priorities, Type = Integer, Flags = &h0
		Highest = 1000
		  High = 800
		  High_Apple = 751
		  MediumHigh = 600
		  Medium = 400
		  Low_Apple = 251
		Low = 200
	#tag EndEnum


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
