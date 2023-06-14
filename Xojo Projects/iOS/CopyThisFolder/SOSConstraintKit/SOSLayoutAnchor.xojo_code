#tag Class
Class SOSLayoutAnchor
	#tag CompatibilityFlags = ( TargetDesktop and ( Target64Bit ) ) or ( TargetIOS and ( Target64Bit ) )
	#tag Method, Flags = &h0
		Function ConstraintEqualToAnchor(anchor as SOSLayoutAnchor, offset as Double = 0.0) As SOSLayoutConstraint
		  // Creates a constraint equal to another anchor plus an offset
		  
		  #If TargetMacOS Or TargetIOS
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
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ConstraintGreaterThanOrEqualToAnchor(anchor as SOSLayoutAnchor, offset as Double = 0.0) As SOSLayoutConstraint
		  // Creates a constraint greater than or equal to another anchor plus an offset
		  
		  #If TargetMacOS Or TargetIOS
		    If Introspection.GetType(Self).name <> Introspection.GetType(anchor).name Then
		      Raise New InvalidArgumentException("The anchor axis must match the type you are calculating against")
		    End If
		    
		    // - (NSLayoutConstraint *)constraintGreaterThanOrEqualToAnchor:(NSLayoutAnchor<AnchorType> *)anchor constant:(CGFloat)c;
		    Declare Function constraintGreaterThanOrEqualToAnchor_constant Lib "Foundation" Selector "constraintGreaterThanOrEqualToAnchor:constant:" ( obj As ptr , anchor As Ptr , c As Double ) As Ptr
		    
		    Dim p As ptr = constraintGreaterThanOrEqualToAnchor_constant(mObj, anchor.Handle, offset)
		    If p = Nil Then
		      Return Nil
		    End If
		    
		    Return SOSLayoutConstraint.Create(p)
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ConstraintLessThanOrEqualToAnchor(anchor as SOSLayoutAnchor, offset as Double) As SOSLayoutConstraint
		  // Creates a constraint less than or equal to another anchor plus an offset
		  
		  #If TargetMacOS Or TargetIOS
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
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Attributes( Hidden ) Protected Sub Constructor(p as ptr)
		  mObj = p
		End Sub
	#tag EndMethod


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  // Pointer to the underlying NSLayoutAnchor
			  
			  Return mObj
			End Get
		#tag EndGetter
		Handle As Ptr
	#tag EndComputedProperty

	#tag Property, Flags = &h1
		Attributes( Hidden ) Protected mObj As Ptr
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
