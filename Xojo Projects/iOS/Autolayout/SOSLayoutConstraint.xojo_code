#tag Class
Class SOSLayoutConstraint
	#tag Method, Flags = &h0
		Sub Activate()
		  
		  SetPriority(mActivePriority, False)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub Constructor(p as ptr)
		  
		  mObj = p
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(item1 as ptr, attr1 as LayoutAttributes, relation as relations, value as Double)
		  
		  #If TargetIOS
		    // + (instancetype)constraintWithItem:(id)view1 attribute:(NSLayoutAttribute)attr1 relatedBy:(NSLayoutRelation)relation toItem:(id)view2 attribute:(NSLayoutAttribute)attr2 multiplier:(CGFloat)multiplier constant:(CGFloat)c;
		    Declare Function constraintWithItem_attribute_relatedBy_toItem_attribute_multiplier_constant Lib "Foundation" Selector "constraintWithItem:attribute:relatedBy:toItem:attribute:multiplier:constant:" ( cls As ptr , view1 As Ptr , attr1 As Integer , relation As Integer , view2 As Ptr , attr2 As Integer , multiplier As Double , c As Double ) As Ptr
		    
		    Declare Function NSClassFromString Lib "Foundation" (name As cfstringref) As ptr
		    
		    Dim cls As ptr = NSClassFromString("NSLayoutConstraint")
		    mObj = constraintWithItem_attribute_relatedBy_toItem_attribute_multiplier_constant(cls, item1, CType(attr1, Integer), CType(relation, Integer), nil, 0, 1.0, value)
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(item1 as ptr, attr1 as LayoutAttributes, relation as relations, item2 as ptr, attr2 as LayoutAttributes, multiplier as Double = 1.0, offset as Double = 0.0)
		  
		  #If TargetIOS
		    // + (instancetype)constraintWithItem:(id)view1 attribute:(NSLayoutAttribute)attr1 relatedBy:(NSLayoutRelation)relation toItem:(id)view2 attribute:(NSLayoutAttribute)attr2 multiplier:(CGFloat)multiplier constant:(CGFloat)c;
		    Declare Function constraintWithItem_attribute_relatedBy_toItem_attribute_multiplier_constant Lib "Foundation" Selector "constraintWithItem:attribute:relatedBy:toItem:attribute:multiplier:constant:" ( cls As ptr , view1 As Ptr , attr1 As integer , relation As integer , view2 As Ptr , attr2 As integer , multiplier As Double , c As Double ) As Ptr
		    
		    Declare Function NSClassFromString Lib "Foundation" (name As cfstringref) As ptr
		    
		    Dim cls As ptr = NSClassFromString("NSLayoutConstraint")
		    mObj = constraintWithItem_attribute_relatedBy_toItem_attribute_multiplier_constant(cls, item1, CType(attr1, Integer), CType(relation, Integer), item2, CType(attr2, Integer), multiplier, offset)
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(item1 as ptr, item2 as ptr, attr as LayoutAttributes)
		  
		  #If TargetIOS
		    // + (instancetype)constraintWithItem:(id)view1 attribute:(NSLayoutAttribute)attr1 relatedBy:(NSLayoutRelation)relation toItem:(id)view2 attribute:(NSLayoutAttribute)attr2 multiplier:(CGFloat)multiplier constant:(CGFloat)c;
		    Declare Function constraintWithItem_attribute_relatedBy_toItem_attribute_multiplier_constant Lib "Foundation" Selector "constraintWithItem:attribute:relatedBy:toItem:attribute:multiplier:constant:" ( cls As ptr , view1 As Ptr , attr1 As integer , relation As integer , view2 As Ptr , attr2 As integer , multiplier As Double , c As Double ) As Ptr
		    
		    Declare Function NSClassFromString Lib "Foundation" (name As cfstringref) As ptr
		    
		    Dim cls As ptr = NSClassFromString("NSLayoutConstraint")
		    mObj = constraintWithItem_attribute_relatedBy_toItem_attribute_multiplier_constant(cls, item1, CType(attr, Integer), 0, item2, CType(attr, Integer), 1.0, 0)
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( Hidden )  Shared Function Create(p as ptr) As SOSLayoutConstraint
		  If p = Nil Then
		    Return Nil
		  End If
		  
		  return new SOSLayoutConstraint(p)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Deactivate()
		  
		  SetPriority(mInactivePriority, False)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Priority(assigns value as Priorities)
		  Priority = CType(value, double)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Attributes( Hidden ) Private Sub SetPriority(value as Double, updateActivePriority as Boolean)
		  #If TargetIOS
		    // throttle to valid values
		    value = Min(1000.0, Max(1.0, value))
		    
		    If updateActivePriority Then
		      mActivePriority = value
		    End If
		    
		    Declare Sub setPriority Lib "Foundation" Selector "setPriority:" (obj As ptr, value As Single)
		    
		    setPriority(mObj, value)
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub TogglePriority()
		  If Self.Priority = mInactivePriority Then
		    SetPriority(mActivePriority, False)
		  Else
		    SetPriority(mInactivePriority, false)
		  End If
		End Sub
	#tag EndMethod


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #If TargetiOS
			    // @property(getter=isActive) BOOL active;
			    Declare Function isActive Lib "Foundation" Selector "isActive" (obj As ptr) As Boolean
			    
			    Return isActive(mObj)
			  #EndIf
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #If TargetiOS
			    Declare Sub setActive Lib "Foundation" Selector "setActive:" (obj As ptr, value As Boolean)
			    setActive(mObj, value)
			  #EndIf
			End Set
		#tag EndSetter
		Active As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #If TargetIOS
			    // @property(readonly, copy) NSLayoutAnchor *firstAnchor;
			    Declare Function getFirstAnchor Lib "Foundation" Selector "firstAnchor" (obj As ptr) As Ptr
			    
			    Return getFirstAnchor(mObj)
			  #EndIf
			End Get
		#tag EndGetter
		FirstAnchor As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #If TargetIOS
			    // @property(readonly) NSLayoutAttribute firstAttribute;
			    Declare Function getFirstAttribute Lib "Foundation" Selector "firstAttribute" (obj As ptr) As Integer
			    
			    Return CType(getFirstAttribute(mObj), LayoutAttributes)
			  #EndIf
			End Get
		#tag EndGetter
		FirstAttribute As LayoutAttributes
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #If TargetIOS
			    // @property(nullable, readonly, assign) id firstItem;
			    Declare Function getFirstItem Lib "Foundation" Selector "firstItem" (obj As ptr) As Ptr
			    
			    return getFirstItem(mObj)
			  #EndIf
			End Get
		#tag EndGetter
		FirstItem As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return mObj
			End Get
		#tag EndGetter
		Handle As ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #If TargetIOS
			    // @property(copy) NSString *identifier;
			    Declare Function getIdentifier Lib "Foundation" Selector "identifier" (obj As ptr) As CFStringRef
			    
			    Return getIdentifier(mObj)
			    
			    
			  #EndIf
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #If TargetIOS
			    Declare Sub setIdentifier Lib "Foundation" Selector "setIdentifier:" (obj As ptr, value As CFStringRef)
			    
			    setIdentifier(mObj, value)
			    
			  #EndIf
			End Set
		#tag EndSetter
		Identifier As String
	#tag EndComputedProperty

	#tag Property, Flags = &h21
		Attributes( Hidden ) Private mActivePriority As Double = 1000.0
	#tag EndProperty

	#tag Property, Flags = &h21
		Attributes( Hidden ) Private mInactivePriority As Double = 1.0
	#tag EndProperty

	#tag Property, Flags = &h21
		Attributes( Hidden ) Private mObj As Ptr
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #If TargetIOS
			    // @property(readonly) CGFloat multiplier;
			    Declare Function getMultiplier Lib "Foundation" Selector "multiplier" (obj As ptr) As Double
			    
			    return getMultiplier(mObj)
			  #EndIf
			End Get
		#tag EndGetter
		Multiplier As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #If TargetIOS
			    // @property CGFloat constant;
			    Declare Function getConstant Lib "Foundation" Selector "constant" (obj As ptr) As Double
			    return getConstant(mObj)
			  #EndIf
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #If TargetIOS
			    Declare Sub setConstant Lib "Foundation" Selector "setConstant:" (obj As ptr, value As Double)
			    setConstant(mObj, value)
			  #EndIf
			End Set
		#tag EndSetter
		Offset As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #If TargetIOS
			    // @property UILayoutPriority priority;
			    Declare Function getPriority Lib "Foundation" Selector "priority" (obj As Ptr) As single
			    
			    Return getPriority(mObj)
			    
			  #EndIf
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  SetPriority(value, True)
			End Set
		#tag EndSetter
		Priority As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #If TargetIOS
			    // @property(readonly) NSLayoutRelation relation;
			    Declare Function getRelation Lib "Foundation" Selector "relation" (obj As ptr) As Integer
			    
			    Return CType(getRelation(mObj), Relations)
			    
			  #EndIf
			End Get
		#tag EndGetter
		relation As Relations
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #If TargetIOS
			    // @property(readonly, copy) NSLayoutAnchor *firstAnchor;
			    Declare Function getSecondAnchor Lib "Foundation" Selector "secondAnchor" (obj As ptr) As Ptr
			    
			    Return getSecondAnchor(mObj)
			  #EndIf
			End Get
		#tag EndGetter
		SecondAnchor As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #If TargetIOS
			    // @property(readonly) NSLayoutAttribute firstAttribute;
			    Declare Function getSecondAttribute Lib "Foundation" Selector "secondAttribute" (obj As ptr) As Integer
			    
			    Return CType(getSecondAttribute(mObj), LayoutAttributes)
			  #EndIf
			End Get
		#tag EndGetter
		SecondAttribute As LayoutAttributes
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #If TargetIOS
			    // @property(nullable, readonly, assign) id firstItem;
			    Declare Function getSecondItem Lib "Foundation" Selector "secondItem" (obj As ptr) As Ptr
			    
			    return getSecondItem(mObj)
			  #EndIf
			End Get
		#tag EndGetter
		SecondItem As Ptr
	#tag EndComputedProperty


	#tag Enum, Name = LayoutAttributes, Type = Integer, Flags = &h0
		Absolute = 0
		  NotAnAttribute = 0
		  Left = 1
		  Right
		  Top
		  Bottom
		  Leading
		  Trailing
		  Width
		  Height
		  CenterX
		  CenterY
		  LastBaseline
		  FirstBaseline
		  LeftMargin
		  RIghtMargin
		  TopMargin
		  BottomMargin
		  LeadingMargin
		  TrailingMargin
		  CenterXWithinMargins
		CenterYWithinMargins
	#tag EndEnum

	#tag Enum, Name = Relations, Type = Integer, Flags = &h0
		LessThanOrEqual = -1
		  Equal = 0
		GreaterThanOrEqual = 1
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
			Name="relation"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Relations"
			EditorType="Enum"
			#tag EnumValues
				"-1 - LessThanOrEqual"
				"0 - Equal"
				"1 - GreaterThanOrEqual"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="FirstAttribute"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="LayoutAttributes"
			EditorType="Enum"
			#tag EnumValues
				"0 - Absolute"
				"1 - Left"
				"2 - Right"
				"3 - Top"
				"4 - Bottom"
				"5 - Leading"
				"6 - Trailing"
				"7 - Width"
				"8 - Height"
				"9 - CenterX"
				"10 - CenterY"
				"11 - LastBaseline"
				"12 - FirstBaseline"
				"13 - LeftMargin"
				"14 - RIghtMargin"
				"15 - TopMargin"
				"16 - BottomMargin"
				"17 - LeadingMargin"
				"18 - TrailingMargin"
				"19 - CenterXWithinMargins"
				"20 - CenterYWithinMargins"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="SecondAttribute"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="LayoutAttributes"
			EditorType="Enum"
			#tag EnumValues
				"0 - Absolute"
				"1 - Left"
				"2 - Right"
				"3 - Top"
				"4 - Bottom"
				"5 - Leading"
				"6 - Trailing"
				"7 - Width"
				"8 - Height"
				"9 - CenterX"
				"10 - CenterY"
				"11 - LastBaseline"
				"12 - FirstBaseline"
				"13 - LeftMargin"
				"14 - RIghtMargin"
				"15 - TopMargin"
				"16 - BottomMargin"
				"17 - LeadingMargin"
				"18 - TrailingMargin"
				"19 - CenterXWithinMargins"
				"20 - CenterYWithinMargins"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="Multiplier"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Double"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Offset"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Double"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Identifier"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Priority"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Double"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Active"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
