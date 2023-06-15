#tag Class
Class SOSStackView
Inherits iOSMobileUserControl
	#tag CompatibilityFlags = ( TargetWeb and ( Target64Bit ) ) or ( TargetIOS and ( Target64Bit ) )
	#tag Event
		Sub AppearanceChanged(dark as Boolean)
		  RaiseEvent AppearanceChanged(dark)
		  
		  ΩUpdateScrollViewSize
		End Sub
	#tag EndEvent

	#tag Event
		Function CreateView() As Ptr
		  Declare Function NSClassFromString Lib "Foundation" (name As cfstringref) As ptr
		  Declare Function alloc Lib "Foundation" Selector "alloc" (cls As ptr) As ptr
		  Declare Function init Lib "Foundation" Selector "init" (cls As ptr) As ptr
		  // - (void)addSubview:(UIView *)view;
		  Declare Sub addSubview Lib "Foundation" Selector "addSubview:" ( obj As ptr , view As Ptr )
		  Declare Function Retain Lib "Foundation" Selector "retain" (obj As Ptr) As Ptr
		  
		  // set up the StackView
		  // - (instancetype)initWithFrame:(CGRect)frame;
		  Declare Function initWithFrame Lib "Foundation" Selector "initWithFrame:" ( obj As ptr , frame As CGRect ) As Ptr
		  // @property(nonatomic) BOOL translatesAutoresizingMaskIntoConstraints;
		  Declare Sub setTranslatesAutoresizingMaskIntoConstraints Lib "Foundation" Selector "setTranslatesAutoresizingMaskIntoConstraints:" (obj As ptr, value As Boolean)
		  
		  Dim frame As cgrect
		  frame.X = 0
		  frame.Y = 0
		  frame.Width = 50
		  frame.Height = 50
		  
		  mObj = Retain(initWithFrame(alloc(NSClassFromString("UIStackView")), frame))
		  
		  setTranslatesAutoresizingMaskIntoConstraints(mObj, False)
		  
		  // Return mObj
		  
		  // scrollview wrapper
		  mScrollObj = retain(init(alloc(NSClassFromString("UIScrollView"))))
		  setTranslatesAutoresizingMaskIntoConstraints(mScrollObj, False)
		  
		  addSubview(mScrollObj, mObj)
		  
		  ΩUpdateScrollViewContentConstraints
		  
		  Return mScrollObj
		  
		  
		  
		  
		  
		  
		  
		  
		End Function
	#tag EndEvent

	#tag Event
		Sub Opening()
		  RaiseEvent Opening
		  
		  ΩUpdateScrollViewSize
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub AddArrangedSubview(view as DesktopUIControl)
		  // Adds a view to the stack
		  
		  #If TargetMacOS
		    // - (void)addArrangedSubview:(UIView *)view;
		    Declare Sub addArrangedSubview Lib "Foundation" Selector "addArrangedSubview:" ( obj As ptr , view As Ptr )
		    
		    addArrangedSubview(mObj, view.Handle)
		    
		    views.Add(view)
		    
		    ΩUpdateScrollViewSize
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub CustomSpacingAfterView(view as DesktopUIControl, assigns value as double)
		  // Sets the spacing after the specified view to the specified distance
		  
		  #If TargetMacOS
		    // - (void)setCustomSpacing:(CGFloat)spacing afterView:(UIView *)arrangedSubview;
		    Declare Sub setCustomSpacing_afterView Lib "Foundation" Selector "setCustomSpacing:afterView:" ( obj As ptr , spacing As Double , arrangedSubview As Ptr )
		    setCustomSpacing_afterView(mObj, value, view.Handle)
		    
		    ΩUpdateScrollViewSize
		  #EndIf
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub CustomSpacingAfterViewAt(index as integer, assigns value as Double)
		  // Sets the spacing after the view at the specified inex to the specified distance
		  
		  #If TargetMacOS
		    Dim view As ptr = ΩViewatindex(index)
		    If view = Nil Then
		      Raise New OutOfBoundsException
		    End If
		    
		    // - (void)setCustomSpacing:(CGFloat)spacing afterView:(UIView *)arrangedSubview;
		    Declare Sub setCustomSpacing_afterView Lib "Foundation" Selector "setCustomSpacing:afterView:" ( obj As ptr , spacing As Double , arrangedSubview As Ptr )
		    setCustomSpacing_afterView(mObj, value, view)
		    
		    ΩUpdateScrollViewSize
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Destructor()
		  #If TargetMacOS
		    Declare Sub Release Lib "Foundation" Selector "release" (obj As Ptr)
		    Release(mObj)
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Handle() As Ptr
		  Return mObj
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub InsertArrangedSubviewAt(view as DesktopUIControl, index as integer)
		  // Inserts a view into the stack at the specified index
		  
		  #If TargetMacOS
		    // - (void)insertArrangedSubview:(UIView *)view atIndex:(NSUInteger)stackIndex;
		    Declare Sub insertArrangedSubview_atIndex Lib "Foundation" Selector "insertArrangedSubview:atIndex:" ( obj As ptr , view As Ptr , stackIndex As Integer )
		    
		    insertArrangedSubview_atIndex(mObj, view.Handle, index)
		    
		    views.AddAt(index, view)
		    
		    ΩUpdateScrollViewSize
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub RemoveArrangedSubview(view as DesktopUIControl)
		  // Removes the specified view from the stack
		  
		  #If TargetMacOS
		    // - (void)removeArrangedSubview:(UIView *)view;
		    Declare Sub removeArrangedSubview Lib "Foundation" Selector "removeArrangedSubview:" ( obj As ptr , view As Ptr )
		    
		    removeArrangedSubview(mObj, view.Handle)
		    
		    Dim p As Integer = views.IndexOf(view)
		    views.RemoveAt(p)
		    
		    ΩUpdateScrollViewSize
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub RemoveArrangedSubviewAt(index as integer)
		  // Removes the view at the specified index from the stack
		  #If TargetMacOS
		    Dim view As ptr = ΩViewatindex(index)
		    If view = Nil Then
		      Raise New OutOfBoundsException
		    End If
		    
		    Declare Sub removeArrangedSubview Lib "Foundation" Selector "removeArrangedSubview:" ( obj As ptr , view As Ptr )
		    RemoveArrangedSubview(mObj, view)
		    
		    views.RemoveAt(index)
		    
		    ΩUpdateScrollViewSize
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ScrollViewHandle() As Ptr
		  return mScrollObj
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub ΩUpdateScrollViewContentConstraints()
		  // add some constraints
		  
		  For i As Integer = 0 To UBound(mScrollViewContentConstraints)
		    mScrollViewContentConstraints(i).Active = False
		  Next
		  
		  Redim mScrollViewContentConstraints(-1)
		  
		  Dim c As SOSLayoutConstraint
		  If Direction = axis.Horizontal Then
		    mScrollViewContentConstraints.Add New SOSLayoutConstraint(mObj, mScrollObj, SOSLayoutConstraint.LayoutAttributes.CenterY)
		    mScrollViewContentConstraints.Add New SOSLayoutConstraint(mObj, mScrollObj, SOSLayoutConstraint.LayoutAttributes.Left)
		    mScrollViewContentConstraints.Add New SOSLayoutConstraint(mObj, mScrollObj, SOSLayoutConstraint.LayoutAttributes.Right, SOSLayoutConstraint.relations.GreaterThanOrEqual)
		  ElseIf Direction = axis.Vertical Then
		    mScrollViewContentConstraints.Add New SOSLayoutConstraint(mObj, mScrollObj, SOSLayoutConstraint.LayoutAttributes.CenterX)
		    mScrollViewContentConstraints.Add New SOSLayoutConstraint(mObj, mScrollObj, SOSLayoutConstraint.LayoutAttributes.Top)
		    mScrollViewContentConstraints.Add New SOSLayoutConstraint(mObj, mScrollObj, SOSLayoutConstraint.LayoutAttributes.Bottom, SOSLayoutConstraint.relations.GreaterThanOrEqual)
		  Else
		    Break
		  End If
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub ΩUpdateScrollViewSize()
		  // contentView.layoutIfNeeded() //set a frame based on constraints
		  // scrollView.contentSize = CGSize(width: contentView.frame.width, height: contentView.frame.height)
		  
		  // - (void)layoutIfNeeded;
		  Declare Sub layoutIfNeeded Lib "Foundation" Selector "layoutIfNeeded" (obj As ptr)
		  // @property(nonatomic) CGRect frame;
		  Declare Function getFrame Lib "Foundation" Selector "frame" (obj As ptr) As CGRect
		  // @property(nonatomic) CGSize contentSize;
		  Declare Sub setContentSize Lib "Foundation" Selector "setContentSize:" (obj As ptr, value As cgsize)
		  
		  // Force the content to redraw
		  layoutIfNeeded(mObj)
		  
		  // Get the rect for the content
		  Dim frame As cgrect = getFrame(mObj)
		  
		  Dim sz As cgsize
		  sz.width = frame.Width
		  sz.height = frame.Height
		  
		  Dim h As Double = frame.Height
		  
		  // set the content size on the scrollview
		  setContentSize(mScrollObj, sz)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Attributes( Hidden ) Private Function ΩViewAtIndex(index as integer) As Ptr
		  // @property(nonatomic, readonly, copy) NSArray<__kindof UIView *> *arrangedSubviews;
		  Declare Function getArrangedSubviews Lib "Foundation" Selector "arrangedSubviews" (obj As ptr) As Ptr
		  
		  Dim p As ptr = getArrangedSubviews(mObj)
		  
		  Declare Function count Lib "Foundation" Selector "count" (obj As ptr) As Integer
		  
		  Dim c As Integer = count(p)
		  If index < 0 Or index >= c Then
		    Return Nil
		  End If
		  
		  Declare Function objectAtIndex Lib "Foundation" Selector "objectAtIndex:" (obj As ptr, index As Integer) As ptr
		  
		  return objectAtIndex(p, index)
		End Function
	#tag EndMethod


	#tag Hook, Flags = &h0
		Event AppearanceChanged(dark as Boolean)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event Opening()
	#tag EndHook


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  // Alignment of views within the StackView
			  #If TargetMacOS
			    // @property(nonatomic) UIStackViewAlignment alignment;
			    Declare Function getAlignment Lib "Foundation" Selector "alignment" (obj As ptr) As Integer
			    
			    Return CType(getAlignment(mObj), Alignments)
			    
			  #EndIf
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #If TargetMacOS
			    // @property(nonatomic) UIStackViewAlignment alignment;
			    Declare Sub setAlignment Lib "Foundation" Selector "setAlignment:" (obj As ptr, value As Integer)
			    
			    setAlignment(mObj, CType(value, Integer))
			    
			    ΩUpdateScrollViewSize
			  #EndIf
			  
			End Set
		#tag EndSetter
		Alignment As Alignments
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  // Whether or not Baseline Relative Arrangement is being used.
			  #If TargetMacOS
			    // @property(nonatomic, getter=isBaselineRelativeArrangement) BOOL baselineRelativeArrangement;
			    Declare Function isBaselineRelativeArrangement Lib "Foundation" Selector "isBaselineRelativeArrangement" (obj As ptr) As Boolean
			    
			    Return isBaselineRelativeArrangement(mObj)
			    
			  #EndIf
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #If TargetMacOS
			    // @property(nonatomic, getter=isBaselineRelativeArrangement) BOOL baselineRelativeArrangement;
			    Declare Sub setBaselineRelativeArrangement Lib "Foundation" Selector "setBaselineRelativeArrangement:" (obj As ptr, value As Boolean)
			    
			    setBaselineRelativeArrangement(mObj, value)
			    
			    ΩUpdateScrollViewSize
			  #EndIf
			End Set
		#tag EndSetter
		BaselineRelativeArrangement As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  // The direction of the Stack View
			  #If TargetMacOS
			    // @property(nonatomic) UILayoutConstraintAxis axis;
			    Declare Function getAxis Lib "Foundation" Selector "axis" (obj As ptr) As Integer
			    
			    Return CType(getAxis(mObj), axis)
			  #EndIf
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #If TargetMacOS
			    Declare Sub setAxis Lib "Foundation" Selector "setAxis:" (obj As ptr, value As Integer)
			    
			    setAxis(mObj, CType(value, Integer))
			    
			    ΩUpdateScrollViewContentConstraints
			    
			    ΩUpdateScrollViewSize
			  #EndIf
			End Set
		#tag EndSetter
		Direction As Axis
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  // The distribution of the StackView
			  #If TargetMacOS
			    // @property(nonatomic) UIStackViewDistribution distribution;
			    Declare Function getDistribution Lib "Foundation" Selector "distribution" (obj As ptr) As Integer
			    
			    Return CType(getDistribution(mObj), Distributions)
			    
			    
			  #EndIf
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #If TargetMacOS
			    // @property(nonatomic) UIStackViewDistribution distribution;
			    Declare Sub setDistribution Lib "Foundation" Selector "setDistribution:" (obj As ptr, value As Integer)
			    
			    setDistribution(mObj, CType(value, Integer))
			    
			    ΩUpdateScrollViewSize
			  #EndIf
			End Set
		#tag EndSetter
		Distribution As Distributions
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  // Whether or not the Stack View is using Layout Margins Relative Alignment
			  #If TargetMacOS
			    // @property(nonatomic, getter=isLayoutMarginsRelativeArrangement) BOOL layoutMarginsRelativeArrangement;
			    Declare Function isLayoutMarginsRelativeArrangement Lib "Foundation" Selector "isLayoutMarginsRelativeArrangement" (obj As ptr) As Boolean
			    
			    Return isLayoutMarginsRelativeArrangement(mObj)
			    
			  #EndIf
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #If TargetMacOS
			    // @property(nonatomic, getter=isLayoutMarginsRelativeArrangement) BOOL layoutMarginsRelativeArrangement;
			    Declare Sub setLayoutMarginsRelativeArrangement Lib "Foundation" Selector "setLayoutMarginsRelativeArrangement:" (obj As ptr, value As Boolean)
			    
			    setLayoutMarginsRelativeArrangement(mObj, value)
			    
			    ΩUpdateScrollViewSize
			  #EndIf
			End Set
		#tag EndSetter
		LayoutMarginsRelativeArrangement As Boolean
	#tag EndComputedProperty

	#tag Property, Flags = &h21
		Attributes( Hidden ) Private mObj As Ptr
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mScrollObj As Ptr
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mScrollViewContentConstraints() As SOSLayoutConstraint
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  // The Height of the scroll area
			  #If TargetMacOS
			    // - (void)layoutIfNeeded;
			    Declare Sub layoutIfNeeded Lib "Foundation" Selector "layoutIfNeeded" (obj As ptr)
			    // @property(nonatomic) CGRect frame;
			    Declare Function getFrame Lib "Foundation" Selector "frame" (obj As ptr) As CGRect
			    
			    layoutIfNeeded(mScrollObj)
			    Dim frame As cgrect = getFrame(mScrollObj)
			    Return frame.Height
			  #EndIf
			End Get
		#tag EndGetter
		ScrollAreaHeight As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  // The Height of the scroll area
			  #If TargetMacOS
			    // - (void)layoutIfNeeded;
			    Declare Sub layoutIfNeeded Lib "Foundation" Selector "layoutIfNeeded" (obj As ptr)
			    // @property(nonatomic) CGRect frame;
			    Declare Function getFrame Lib "Foundation" Selector "frame" (obj As ptr) As CGRect
			    
			    layoutIfNeeded(mScrollObj)
			    Dim frame As cgrect = getFrame(mScrollObj)
			    Return frame.Width
			  #EndIf
			End Get
		#tag EndGetter
		ScrollAreaWidth As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  // Whether or not the view is scrollable
			  #If TargetMacOS
			    
			    // @property(nonatomic, getter=isScrollEnabled) BOOL scrollEnabled;
			    Declare Function isScrollEnabled Lib "Foundation" Selector "isScrollEnabled" (obj As ptr) As Boolean
			    
			    Return isScrollEnabled(mScrollObj)
			  #EndIf
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #If TargetMacOS
			    Declare Sub setScrollEnabled Lib "Foundation" Selector "setScrollEnabled:" (obj As ptr, value As Boolean)
			    
			    setScrollEnabled(mScrollObj, value)
			  #EndIf
			End Set
		#tag EndSetter
		ScrollEnabled As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  // The spacing between the contained views
			  #If TargetMacOS
			    // @property(nonatomic) CGFloat spacing;
			    Declare Function getSpacing Lib "Foundation" Selector "spacing" (obj As ptr) As Double
			    
			    Return getSpacing(mObj)
			    
			  #EndIf
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  // Sets the spacing between the contained views
			  #If TargetMacOS
			    // @property(nonatomic) CGFloat spacing;
			    Declare Sub setSpacing Lib "Foundation" Selector "setSpacing:" (obj As ptr, value As Double)
			    
			    setSpacing(mObj, value)
			    
			    ΩUpdateScrollViewSize
			  #EndIf
			End Set
		#tag EndSetter
		Spacing As Double
	#tag EndComputedProperty

	#tag Property, Flags = &h21
		Attributes( Hidden ) Private Views() As DesktopUIControl
	#tag EndProperty


	#tag Enum, Name = Alignments, Type = Integer, Flags = &h0, Description = 446566696E65732074686520616C69676E6D656E747320666F72206974656D7320696E2074686520537461636B56696577
		Fill
		  Center
		  Leading
		  Trailing
		  Top
		  Bottom
		  FirstBaseline
		LastBaseline
	#tag EndEnum

	#tag Enum, Name = Distributions, Type = Integer, Flags = &h0, Description = 446566696E65732074686520646973747269627574696F6E207479706520666F7220746865206974656D7320696E2074686520537461636B56696577
		Fill
		  FillEqually
		  FillProportionally
		  EqualSpacing
		EqualCentering
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
		#tag ViewProperty
			Name="Alignment"
			Visible=true
			Group="SOSStackView"
			InitialValue="1"
			Type="Alignments"
			EditorType="Enum"
			#tag EnumValues
				"0 - Fill"
				"1 - Center"
				"2 - Leading"
				"3 - Trailing"
				"4 - Top"
				"5 - Bottom"
				"6 - FirstBaseline"
				"7 - LastBaseline"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="Distribution"
			Visible=true
			Group="SOSStackView"
			InitialValue="0"
			Type="Distributions"
			EditorType="Enum"
			#tag EnumValues
				"0 - Fill"
				"1 - FillEqually"
				"2 - FillProportionally"
				"3 - EqualSpacing"
				"4 - EqualCentering"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="Spacing"
			Visible=true
			Group="SOSStackView"
			InitialValue="12"
			Type="Double"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="BaselineRelativeArrangement"
			Visible=true
			Group="SOSStackView"
			InitialValue="False"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="LayoutMarginsRelativeArrangement"
			Visible=true
			Group="SOSStackView"
			InitialValue="False"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="ScrollEnabled"
			Visible=true
			Group="SOSStackView"
			InitialValue="True"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="ScrollAreaWidth"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Double"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="ScrollAreaHeight"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Double"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Direction"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Axis"
			EditorType="Enum"
			#tag EnumValues
				"0 - Horizontal"
				"1 - Vertical"
			#tag EndEnumValues
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
