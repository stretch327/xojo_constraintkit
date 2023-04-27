#tag Class
Class SOSStackView
Inherits iOSMobileUserControl
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
		  
		  Return mObj
		  
		End Function
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub AddArrangedSubview(view as MobileUIControl)
		  // Adds a view to the stack
		  // - (void)addArrangedSubview:(UIView *)view;
		  Declare Sub addArrangedSubview Lib "Foundation" Selector "addArrangedSubview:" ( obj As ptr , view As Ptr )
		  
		  addArrangedSubview(mObj, view.Handle)
		  
		  views.Add(view)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub CustomSpacingAfterView(view as MobileUIControl, assigns value as double)
		  // Sets the spacing after the specified view to the specified distance
		  
		  #If TargetiOS
		    // - (void)setCustomSpacing:(CGFloat)spacing afterView:(UIView *)arrangedSubview;
		    Declare Sub setCustomSpacing_afterView Lib "Foundation" Selector "setCustomSpacing:afterView:" ( obj As ptr , spacing As Double , arrangedSubview As Ptr )
		    setCustomSpacing_afterView(mObj, value, view.Handle)
		  #EndIf
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub CustomSpacingAfterViewAt(index as integer, assigns value as Double)
		  // Sets the spacing after the view at the specified inex to the specified distance
		  
		  #If TargetiOS
		    Dim view As ptr = ΩViewatindex(index)
		    If view = Nil Then
		      Raise New OutOfBoundsException
		    End If
		    
		    // - (void)setCustomSpacing:(CGFloat)spacing afterView:(UIView *)arrangedSubview;
		    Declare Sub setCustomSpacing_afterView Lib "Foundation" Selector "setCustomSpacing:afterView:" ( obj As ptr , spacing As Double , arrangedSubview As Ptr )
		    setCustomSpacing_afterView(mObj, value, view)
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Destructor()
		  #If TargetiOS
		    Declare Sub Release Lib "Foundation" Selector "release" (obj As Ptr)
		    Release(mObj)
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub InsertArrangedSubviewAt(view as MobileUIControl, index as integer)
		  // Inserts a view into the stack at the specified index
		  
		  #If TargetiOS
		    // - (void)insertArrangedSubview:(UIView *)view atIndex:(NSUInteger)stackIndex;
		    Declare Sub insertArrangedSubview_atIndex Lib "Foundation" Selector "insertArrangedSubview:atIndex:" ( obj As ptr , view As Ptr , stackIndex As Integer )
		    
		    insertArrangedSubview_atIndex(mObj, view.Handle, index)
		    
		    views.AddAt(index, view)
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub RemoveArrangedSubview(view as MobileUIControl)
		  // Removes the specified view from the stack
		  
		  #If TargetiOS
		    // - (void)removeArrangedSubview:(UIView *)view;
		    Declare Sub removeArrangedSubview Lib "Foundation" Selector "removeArrangedSubview:" ( obj As ptr , view As Ptr )
		    
		    removeArrangedSubview(mObj, view.Handle)
		    
		    Dim p As Integer = views.IndexOf(view)
		    views.RemoveAt(p)
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub RemoveArrangedSubviewAt(index as integer)
		  // Removes the view at the specified index from the stack
		  #If TargetiOS
		    Dim view As ptr = ΩViewatindex(index)
		    If view = Nil Then
		      Raise New OutOfBoundsException
		    End If
		    
		    Declare Sub removeArrangedSubview Lib "Foundation" Selector "removeArrangedSubview:" ( obj As ptr , view As Ptr )
		    RemoveArrangedSubview(mObj, view)
		    
		    views.RemoveAt(index)
		  #EndIf
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


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  // @property(nonatomic) UIStackViewAlignment alignment;
			  Declare Function getAlignment Lib "Foundation" Selector "alignment" (obj As ptr) As Integer
			  
			  Return CType(getAlignment(mObj), Alignments)
			  
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  // @property(nonatomic) UIStackViewAlignment alignment;
			  Declare Sub setAlignment Lib "Foundation" Selector "setAlignment:" (obj As ptr, value As Integer)
			  
			  setAlignment(mObj, CType(value, Integer))
			  
			End Set
		#tag EndSetter
		Alignment As Alignments
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  // @property(nonatomic, getter=isBaselineRelativeArrangement) BOOL baselineRelativeArrangement;
			  Declare Function isBaselineRelativeArrangement Lib "Foundation" Selector "isBaselineRelativeArrangement" (obj As ptr) As Boolean
			  
			  Return isBaselineRelativeArrangement(mObj)
			  
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  // @property(nonatomic, getter=isBaselineRelativeArrangement) BOOL baselineRelativeArrangement;
			  Declare Sub setBaselineRelativeArrangement Lib "Foundation" Selector "setBaselineRelativeArrangement:" (obj As ptr, value As Boolean)
			  
			  setBaselineRelativeArrangement(mObj, value)
			  
			End Set
		#tag EndSetter
		BaselineRelativeArrangement As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  // @property(nonatomic) UILayoutConstraintAxis axis;
			  Declare Function getAxis Lib "Foundation" Selector "axis" (obj As ptr) As Integer
			  
			  return CType(getAxis(mObj), axis)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setAxis Lib "Foundation" Selector "setAxis:" (obj As ptr, value As Integer)
			  
			  setAxis(mObj, CType(value, Integer))
			  
			End Set
		#tag EndSetter
		Direction As Axis
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  // @property(nonatomic) UIStackViewDistribution distribution;
			  Declare Function getDistribution Lib "Foundation" Selector "distribution" (obj As ptr) As Integer
			  
			  Return CType(getDistribution(mObj), Distributions)
			  
			  
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  // @property(nonatomic) UIStackViewDistribution distribution;
			  Declare Sub setDistribution Lib "Foundation" Selector "setDistribution:" (obj As ptr, value As Integer)
			  
			  setDistribution(mObj, CType(value, Integer))
			  
			End Set
		#tag EndSetter
		Distribution As Distributions
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  // @property(nonatomic, getter=isLayoutMarginsRelativeArrangement) BOOL layoutMarginsRelativeArrangement;
			  Declare Function isLayoutMarginsRelativeArrangement Lib "Foundation" Selector "isLayoutMarginsRelativeArrangement" (obj As ptr) As Boolean
			  
			  Return isLayoutMarginsRelativeArrangement(mObj)
			  
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  // @property(nonatomic, getter=isLayoutMarginsRelativeArrangement) BOOL layoutMarginsRelativeArrangement;
			  Declare Sub setLayoutMarginsRelativeArrangement Lib "Foundation" Selector "setLayoutMarginsRelativeArrangement:" (obj As ptr, value As Boolean)
			  
			  setLayoutMarginsRelativeArrangement(mObj, value)
			  
			End Set
		#tag EndSetter
		LayoutMarginsRelativeArrangement As Boolean
	#tag EndComputedProperty

	#tag Property, Flags = &h21
		Attributes( Hidden ) Private mObj As Ptr
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  // Returns the spacing between the contained views
			  // @property(nonatomic) CGFloat spacing;
			  Declare Function getSpacing Lib "Foundation" Selector "spacing" (obj As ptr) As Double
			  
			  Return getSpacing(mObj)
			  
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  // Sets the spacing between the contained views
			  #If TargetiOS
			    // @property(nonatomic) CGFloat spacing;
			    Declare Sub setSpacing Lib "Foundation" Selector "setSpacing:" (obj As ptr, value As Double)
			    
			    setSpacing(mObj, value)
			    
			  #EndIf
			End Set
		#tag EndSetter
		Spacing As Double
	#tag EndComputedProperty

	#tag Property, Flags = &h21
		Attributes( Hidden ) Private Views() As MobileUIControl
	#tag EndProperty


	#tag Enum, Name = Alignments, Type = Integer, Flags = &h0
		Fill
		  Center
		  Leading
		  Trailing
		  Top
		  Bottom
		  FirstBaseline
		LastBaseline
	#tag EndEnum

	#tag Enum, Name = Distributions, Type = Integer, Flags = &h0
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
			Name="Height"
			Visible=true
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Width"
			Visible=true
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Direction"
			Visible=true
			Group="SOSStackView"
			InitialValue="1"
			Type="Axis"
			EditorType="Enum"
			#tag EnumValues
				"0 - Horizontal"
				"1 - Vertical"
			#tag EndEnumValues
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
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="LayoutMarginsRelativeArrangement"
			Visible=true
			Group="SOSStackView"
			InitialValue=""
			Type="Boolean"
			EditorType=""
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
			Name="TintColor"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="ColorGroup"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
