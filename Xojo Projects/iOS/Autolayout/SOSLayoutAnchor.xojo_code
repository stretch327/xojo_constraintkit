#tag Class
Class SOSLayoutAnchor
	#tag Method, Flags = &h0
		Function constraintEqualToAnchor(anchor as SOSLayoutAnchor, offset as Double = 0.0) As SOSLayoutConstraint
		  If Introspection.GetType(Self).name <> Introspection.GetType(anchor).name Then
		    Raise New InvalidArgumentException("The anchor axis must match the type you are calculating against")
		  End If
		  
		  // - (NSLayoutConstraint *)constraintEqualToAnchor:(NSLayoutAnchor<AnchorType> *)anchor constant:(CGFloat)c;
		  Declare Function constraintEqualToAnchor_constant Lib "Foundation" Selector "constraintEqualToAnchor:constant:" ( obj As ptr , anchor As Ptr , c As Double ) As Ptr
		  
		  Dim p As ptr = constraintEqualToAnchor_constant(mObj, anchor.Handle, offset)
		  If p = Nil Then
		    Return Nil
		  End If
		  
		  Return SOSLayoutConstraint.Create(p)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function constraintGreaterThanOrEqualToAnchor(anchor as SOSLayoutAnchor, offset as Double = 0.0) As SOSLayoutConstraint
		  If Introspection.GetType(Self).name <> Introspection.GetType(anchor).name Then
		    Raise New InvalidArgumentException("The anchor axis must match the type you are calculating against")
		  End If
		  
		  // - (NSLayoutConstraint *)constraintGreaterThanOrEqualToAnchor:(NSLayoutAnchor<AnchorType> *)anchor constant:(CGFloat)c;
		  Declare Function constraintGreaterThanOrEqualToAnchor_constant Lib "Foundation" Selector "constraintGreaterThanOrEqualToAnchor:constant:" ( obj As ptr , anchor As Ptr , c As Double ) As Ptr
		  
		  Dim p As ptr = constraintGreaterThanOrEqualToAnchor_constant(mObj, anchor.Handle, offset)
		  If p = Nil Then
		    Return Nil
		  End If
		  
		  return SOSLayoutConstraint.Create(p)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function constraintLessThanOrEqualToAnchor(anchor as SOSLayoutAnchor, offset as Double) As SOSLayoutConstraint
		  If Introspection.GetType(Self).name <> Introspection.GetType(anchor).name Then
		    Raise New InvalidArgumentException("The anchor axis must match the type you are calculating against")
		  End If
		  
		  //  - (NSLayoutConstraint *)constraintGreaterThanOrEqualToAnchor:(NSLayoutAnchor<AnchorType> *)anchor constant:(CGFloat)c; Declare Function constraintGreaterThanOrEqualToAnchor_constant Lib "Foundation" Selector "constraintGreaterThanOrEqualToAnchor:constant:" ( obj As ptr , anchor As Ptr , c As Double ) As Ptr
		  Declare Function constraintGreaterThanOrEqualToAnchor_constant Lib "Foundation" Selector "constraintGreaterThanOrEqualToAnchor:constant:" ( obj As ptr , anchor As Ptr , c As Double ) As Ptr
		  
		  Dim p As ptr = constraintGreaterThanOrEqualToAnchor_constant(mObj, anchor.Handle, offset)
		  If p = Nil Then
		    Return Nil
		  End If
		  
		  Return SOSLayoutConstraint.Create(p)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub Constructor(p as ptr)
		  mObj = p
		End Sub
	#tag EndMethod


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return mObj
			End Get
		#tag EndGetter
		Handle As Ptr
	#tag EndComputedProperty

	#tag Property, Flags = &h1
		Protected mObj As Ptr
	#tag EndProperty


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
End Class
#tag EndClass
