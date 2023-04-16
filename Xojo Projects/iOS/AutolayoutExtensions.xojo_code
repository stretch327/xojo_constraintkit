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
		Function BottomAnchor(extends view as MobileScreen) As NSLayoutYAxisAnchor
		  #If TargetiOS
		    // @property(nonatomic, readonly, strong) NSLayoutYAxisAnchor *bottomAnchor
		    Declare Function getBottomAnchor Lib "Foundation" Selector "bottomAnchor" (obj As ptr) As Ptr
		    
		    return NSLayoutYAxisAnchor.Create(getBottomAnchor(view.Handle))
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function BottomAnchor(extends view as MobileUIControl) As NSLayoutYAxisAnchor
		  #If TargetiOS
		    // @property(nonatomic, readonly, strong) NSLayoutYAxisAnchor *bottomAnchor
		    Declare Function getBottomAnchor Lib "Foundation" Selector "bottomAnchor" (obj As ptr) As Ptr
		    
		    Return NSLayoutYAxisAnchor.Create(getBottomAnchor(view.Handle))
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function CenterXAnchor(extends view as MobileScreen) As NSLayoutXAxisAnchor
		  #if TargetiOS
		    // @property(nonatomic, readonly, strong) NSLayoutXAxisAnchor *centerXAnchor;
		    Declare Function getCenterXAnchor Lib "Foundation" Selector "centerXAnchor" (obj As ptr) As Ptr
		    
		    return NSLayoutXAxisAnchor.create(getCenterXAnchor(view.Handle))
		  #endif
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function CenterXAnchor(extends view as MobileUIControl) As NSLayoutXAxisAnchor
		  #if TargetiOS
		    // @property(nonatomic, readonly, strong) NSLayoutXAxisAnchor *centerXAnchor;
		    Declare Function getCenterXAnchor Lib "Foundation" Selector "centerXAnchor" (obj As ptr) As Ptr
		    
		    return NSLayoutXAxisAnchor.create(getCenterXAnchor(view.Handle))
		  #endif
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function CenterYAnchor(extends view as MobileScreen) As NSLayoutYAxisAnchor
		  #If TargetiOS
		    // @property(nonatomic, readonly, strong) NSLayoutYAxisAnchor *centerYAnchor;
		    Declare Function getCenterYAnchor Lib "Foundation" selector "centerYAnchor" (obj as ptr) as Ptr
		    
		    return NSLayoutYAxisAnchor.Create(getCenterYAnchor(view.Handle))
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function CenterYAnchor(extends view as MobileUIControl) As NSLayoutYAxisAnchor
		  #If TargetiOS
		    // @property(nonatomic, readonly, strong) NSLayoutYAxisAnchor *centerYAnchor;
		    Declare Function getCenterYAnchor Lib "Foundation" selector "centerYAnchor" (obj as ptr) as Ptr
		    
		    return NSLayoutYAxisAnchor.Create(getCenterYAnchor(view.Handle))
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, CompatibilityFlags = (TargetIOS and (Target64Bit))
		Function CompressionResistancePriorityForAxis(Extends item as MobileUIControl, axis as Autolayout.axis) As Double
		  #If TargetIOS
		    Declare Function NSClassFromString Lib "Foundation" (name As cfstringref) As ptr
		    
		    // - (double)contentCompressionResistancePriorityForAxis:(UILayoutConstraintAxis)axis forView:(UIView *)view;
		    Declare Function contentCompressionResistancePriorityForAxis_forView Lib "Foundation" Selector "contentCompressionResistancePriorityForAxis:forView:" ( obj As ptr , axis As Integer , view As Ptr ) As Double
		    
		    Return contentCompressionResistancePriorityForAxis_forView(NSClassFromString("SOSLayoutConstraint"), CType(axis, Integer), item.handle)
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, CompatibilityFlags = (TargetIOS and (Target64Bit))
		Sub CompressionResistancePriorityForAxis(Extends item as MobileUIControl, priority as single, axis as Autolayout.Axis)
		  #If TargetIOS
		    Declare Function NSClassFromString Lib "Foundation" (name As cfstringref) As ptr
		    
		    // - (void)setContentCompressionResistancePriority:(double)priority forAxis:(UILayoutConstraintAxis)axis forView:(UIView *)view;
		    Declare Sub setContentCompressionResistancePriority_forAxis_forView Lib "Foundation" Selector "setContentCompressionResistancePriority:forAxis:forView:" ( obj As ptr , priority As Single , axis As Integer , view As Ptr )
		    
		    setContentCompressionResistancePriority_forAxis_forView(NSClassFromString("SOSLayoutConstraint"), priority, CType(axis, Integer), item.handle)
		  #EndIf
		End Sub
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
		Sub EndAnimation(extends view as MobileScreen)
		  view.LayoutIfNeeded
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function FirstBaselineAnchor(extends view as MobileUIControl) As NSLayoutYAxisAnchor
		  #If TargetiOS
		    // @property(nonatomic, readonly, strong) NSLayoutYAxisAnchor *firstBaselineAnchor;
		    Declare Function getFirstBaselineAnchor Lib "Foundation" Selector "firstBaselineAnchor" (obj As ptr) As Ptr
		    
		    return NSLayoutYAxisAnchor.Create(getFirstBaselineAnchor(view.Handle))
		  #EndIf
		End Function
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
		Function HeightAnchor(extends view as MobileScreen) As NSLayoutDimension
		  #If TargetiOS
		    // @property(nonatomic, readonly, strong) NSLayoutDimension *heightAnchor;
		    Declare Function getHeightAnchor Lib "Foundation" Selector "heightAnchor" (obj As ptr) As Ptr
		    
		    Return  NSLayoutDimension.create(getHeightAnchor(view.Handle))
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function HeightAnchor(extends view as MobileUIControl) As NSLayoutDimension
		  #If TargetiOS
		    // @property(nonatomic, readonly, strong) NSLayoutDimension *heightAnchor;
		    Declare Function getHeightAnchor Lib "Foundation" Selector "heightAnchor" (obj As ptr) As Ptr
		    
		    Return  NSLayoutDimension.create(getHeightAnchor(view.Handle))
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function HuggingPriorityForAxis(Extends item as MobileUIControl, axis as Autolayout.Axis) As Integer
		  #If TargetIOS
		    Declare Function NSClassFromString Lib "Foundation" (name As cfstringref) As ptr
		    
		    // - (double)contentHuggingPriorityForAxis:(UILayoutConstraintAxis)axis forView:(UIView *)view;
		    Declare Function contentHuggingPriorityForAxis_forView Lib "Foundation" Selector "contentHuggingPriorityForAxis:forView:" ( obj As ptr , axis As Integer , view As Ptr ) As Double
		    
		    Return contentHuggingPriorityForAxis_forView(NSClassFromString("SOSLayoutConstraint"), CType(axis, Integer), item.Handle)
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub HuggingPriorityForAxis(Extends item as MobileUIControl, priority as Single, Axis as Autolayout.Axis)
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
		Function LastBaselineAnchor(extends view as MobileUIControl) As NSLayoutYAxisAnchor
		  #If TargetiOS
		    // @property(nonatomic, readonly, strong) NSLayoutYAxisAnchor *lastBaselineAnchor;
		    Declare Function getLastBaselineAnchor Lib "Foundation" Selector "lastBaselineAnchor" (obj As ptr) As Ptr
		    
		    return NSLayoutYAxisAnchor.Create(getLastBaselineAnchor(view.Handle))
		  #EndIf
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
		Function LeftAnchor(extends view as MobileScreen) As NSLayoutXAxisAnchor
		  Return LeftAnchor(view.Handle)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function LeftAnchor(extends view as MobileUIControl) As NSLayoutXAxisAnchor
		  Return LeftAnchor(view.handle)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function LeftAnchor(view as ptr) As NSLayoutXAxisAnchor
		  #If TargetiOS
		    // @property(nonatomic, readonly, strong) NSLayoutXAxisAnchor *leftAnchor;
		    Declare Function getLeftAnchor Lib "Foundation" Selector "leftAnchor" (obj As ptr) As Ptr
		    
		    Dim p As ptr = getLeftAnchor(view)
		    If p = Nil Then
		      Return Nil
		    End If
		    
		    Return NSLayoutXAxisAnchor.create(p)
		  #EndIf
		End Function
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
		Sub RecreateConstraintsForControl(extends view as MobileScreen, item as MobileUIControl, newPriority as Double = 0)
		  #If TargetiOS
		    Dim ca() As NSLayoutConstraint = view.constraints
		    
		    Dim newConstraints() As NSLayoutConstraint
		    
		    // clip the value to be between 1 and 999 so it'll be editable later
		    If newPriority > 0 Then
		      newPriority = Min(999, Max(1, newPriority))
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
		        
		        view.RemoveConstraint(ca(i))
		      End If
		      
		      If ca(i).SecondItem = item.Handle Then
		        // these are actually backwards, but we'll recreate them forwards
		        Dim c As New NSLayoutConstraint(ca(i).secondItem, ca(i).secondattribute, ca(i).relation, ca(i).firstitem, ca(i).firstattribute, ca(i).multiplier, ca(i).offset)
		        c.Identifier = ca(i).identifier
		        If newPriority > 0 Then
		          c.Priority = newPriority
		        End If
		        c.Active = True
		        newConstraints.Add c
		        
		        view.RemoveConstraint(ca(i))
		      End If
		    Next
		    
		    For i As Integer = 0 To UBound(newConstraints)
		      view.AddConstraint(newConstraints(i))
		    Next
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub RecreateConstraintsForControl(extends view as MobileScreen, item as MobileUIControl, newPriority as Priorities)
		  #If TargetiOS
		    Dim ca() As NSLayoutConstraint = view.constraints
		    
		    Dim newConstraints() As NSLayoutConstraint
		    
		    // Convert the enum to a double
		    Dim priority As Double = CType(newPriority, Double)
		    
		    // clip the value to be between 1 and 999 so it'll be editable later
		    priority = Min(999, Max(1, priority))
		    
		    For i As Integer = UBound(ca) DownTo 0
		      If ca(i).FirstItem = item.Handle Then
		        Dim c As New NSLayoutConstraint(ca(i).FirstItem, ca(i).FirstAttribute, ca(i).relation, ca(i).SecondItem, ca(i).SecondAttribute, ca(i).Multiplier, ca(i).Offset)
		        c.Identifier = ca(i).identifier
		        If priority > 0 Then
		          c.Priority = priority
		        End If
		        c.Active = True
		        newConstraints.add c
		        
		        view.RemoveConstraint(ca(i))
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
		        
		        view.RemoveConstraint(ca(i))
		      End If
		    Next
		    
		    For i As Integer = 0 To UBound(newConstraints)
		      view.AddConstraint(newConstraints(i))
		    Next
		  #EndIf
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
		Function RightAnchor(extends view as MobileScreen) As NSLayoutXAxisAnchor
		  Return RightAnchor(view.Handle)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function RightAnchor(extends view as MobileUIControl) As NSLayoutXAxisAnchor
		  Return RightAnchor(view.handle)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function RightAnchor(view as ptr) As NSLayoutXAxisAnchor
		  #If TargetiOS
		    // @property(nonatomic, readonly, strong) NSLayoutXAxisAnchor *rightAnchor;
		    Declare Function getrightAnchor Lib "Foundation" Selector "rightAnchor" (obj As ptr) As Ptr
		    
		    Dim p As ptr = getrightAnchor(view)
		    If p = Nil Then
		      Return Nil
		    End If
		    
		    Return NSLayoutXAxisAnchor.create(p)
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function SafeAreaInsets(view as MobileScreen) As UIEdgeInsets
		  // @property(nonatomic, readonly) UIEdgeInsets safeAreaInsets;
		  Declare Function getSafeAreaInsets Lib "Foundation" Selector "safeAreaInsets" (obj As ptr) As UIEdgeInsets
		  
		  return getSafeAreaInsets(view.Handle)
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function SafeAreaLayoutGuide(extends view as MobileScreen) As UILayoutGuide
		  Return SafeAreaLayoutGuide(view.Handle)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function SafeAreaLayoutGuide(extends view as MobileUIControl) As UILayoutGuide
		  Return SafeAreaLayoutGuide(view.Handle)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function SafeAreaLayoutGuide(view as ptr) As UILayoutGuide
		  #If TargetiOS
		    // @property(nonatomic, readonly, strong) UILayoutGuide *safeAreaLayoutGuide;
		    Declare Function getSafeAreaLayoutGuide Lib "Foundation" Selector "safeAreaLayoutGuide" (obj As ptr) As Ptr
		    
		    Return Autolayout.UILayoutGuide.Create(getSafeAreaLayoutGuide(view))
		  #EndIf
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function TopAnchor(extends view as MobileScreen) As NSLayoutYAxisAnchor
		  #If TargetiOS
		    // @property(nonatomic, readonly, strong) NSLayoutYAxisAnchor *topAnchor;
		    Declare Function getTopAnchor Lib "Foundation" Selector "topAnchor" (obj As ptr) As Ptr
		    
		    return NSLayoutYAxisAnchor.Create(getTopAnchor(view.Handle))
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function TopAnchor(extends view as MobileUIControl) As NSLayoutYAxisAnchor
		  #If TargetiOS
		    // @property(nonatomic, readonly, strong) NSLayoutYAxisAnchor *topAnchor;
		    Declare Function getTopAnchor Lib "Foundation" Selector "topAnchor" (obj As ptr) As Ptr
		    
		    return NSLayoutYAxisAnchor.Create(getTopAnchor(view.Handle))
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function TrailingAnchor(extends view as MobileScreen) As NSLayoutXAxisAnchor
		  #If TargetiOS
		    // @property(nonatomic, readonly, strong) NSLayoutXAxisAnchor *trailingAnchor;
		    Declare Function getTrailingAnchor Lib "Foundation" Selector "trailingAnchor" (obj As ptr) As Ptr
		    
		    return NSLayoutXAxisAnchor.Create(getTrailingAnchor(view.Handle))
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function TrailingAnchor(extends view as MobileUIControl) As NSLayoutXAxisAnchor
		  #If TargetiOS
		    // @property(nonatomic, readonly, strong) NSLayoutXAxisAnchor *trailingAnchor;
		    Declare Function getTrailingAnchor Lib "Foundation" Selector "trailingAnchor" (obj As ptr) As Ptr
		    
		    return NSLayoutXAxisAnchor.Create(getTrailingAnchor(view.Handle))
		  #EndIf
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

	#tag Method, Flags = &h0
		Function WidthAnchor(extends view as MobileScreen) As NSLayoutDimension
		  #If TargetiOS
		    // @property(nonatomic, readonly, strong) NSLayoutDimension *widthAnchor;
		    Declare Function getWidthAnchor Lib "Foundation" Selector "widthAnchor" (obj As ptr) As Ptr
		    
		    Return NSLayoutDimension.Create(getWidthAnchor(view.Handle))
		  #EndIf
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function WidthAnchor(extends view as MobileUIControl) As NSLayoutDimension
		  #If TargetiOS
		    // @property(nonatomic, readonly, strong) NSLayoutDimension *widthAnchor;
		    Declare Function getWidthAnchor Lib "Foundation" Selector "widthAnchor" (obj As ptr) As Ptr
		    
		    Return NSLayoutDimension.Create(getWidthAnchor(view.Handle))
		  #EndIf
		End Function
	#tag EndMethod


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
