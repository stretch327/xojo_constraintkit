#tag Class
Class SOSLayoutDimension
Inherits SOSLayoutAnchor
	#tag CompatibilityFlags = ( TargetDesktop and ( Target64Bit ) ) or ( TargetIOS and ( Target64Bit ) )
	#tag Method, Flags = &h0
		Function ConstraintEqualToAnchor(anchor as SOSLayoutDimension, multiplier as Double = 1.0, offset as Double = 0.0) As SOSLayoutConstraint
		  // Creates a new constraint equal to the current layout dimension and another, using a multiplier and an offset.
		  
		  #If TargetMacOS Or TargetIOS
		    // - (NSLayoutConstraint *)constraintEqualToAnchor:(NSLayoutDimension *)anchor multiplier:(CGFloat)m constant:(CGFloat)c;
		    Declare Function constraintEqualToAnchor_multiplier_constant Lib "Foundation" Selector "constraintEqualToAnchor:multiplier:constant:" ( obj As ptr , anchor As Ptr , m As Double , c As Double ) As Ptr
		    
		    Dim p As ptr = constraintEqualToAnchor_multiplier_constant(mObj, anchor.handle, multiplier, offset)
		    If p = Nil Then
		      Return Nil
		    End If
		    
		    Return SOSLayoutConstraint.Create(p)
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ConstraintEqualToConstant(c as Double) As SOSLayoutConstraint
		  // Returns a constraint equal to a specified constant
		  #If TargetMacOS Or TargetIOS
		    // - (NSLayoutConstraint *)constraintEqualToConstant:(CGFloat)c;
		    Declare Function constraintEqualToConstant Lib "Foundation" Selector "constraintEqualToConstant:" ( obj As ptr , c As Double ) As Ptr
		    
		    Dim p As ptr = constraintEqualToConstant(mObj, c)
		    If p = Nil Then
		      Return Nil
		    End If
		    
		    Return SOSLayoutConstraint.Create(p)
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ConstraintGreaterThanOrEqualToAnchor(anchor as SOSLayoutDimension, multiplier as Double = 1.0, offset as Double = 0.0) As SOSLayoutConstraint
		  // Creates a new constraint greater or equal to the current layout dimension and another, using a multiplier and an offset.
		  
		  #If TargetMacOS Or TargetIOS
		    // - (NSLayoutConstraint *)constraintGreaterThanOrEqualToAnchor:(NSLayoutDimension *)anchor multiplier:(CGFloat)m constant:(CGFloat)c;
		    Declare Function constraintGreaterThanOrEqualToAnchor_multiplier_constant Lib "Foundation" Selector "constraintGreaterThanOrEqualToAnchor:multiplier:constant:" ( obj As ptr , anchor As Ptr , m As Double , c As Double ) As Ptr
		    
		    Dim p As ptr = constraintGreaterThanOrEqualToAnchor_multiplier_constant(mObj, anchor.handle, multiplier, offset)
		    If p = Nil Then
		      Return Nil
		    End If
		    
		    Return SOSLayoutConstraint.Create(p)
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ConstraintGreaterThanOrEqualToConstant(c as Double) As SOSLayoutConstraint
		  // Creates a constraint greater than or equal to a constant value
		  #If TargetiOS or TargetMacOS
		    // - (NSLayoutConstraint *)constraintGreaterThanOrEqualToConstant:(CGFloat)c;
		    Declare Function constraintGreaterThanOrEqualToConstant Lib "Foundation" Selector "constraintGreaterThanOrEqualToConstant:" ( obj As ptr , c As Double ) As Ptr
		    Dim p As ptr = constraintGreaterThanOrEqualToConstant(mObj, c)
		    If p = Nil Then
		      Return Nil
		    End If
		    
		    Return SOSLayoutConstraint.Create(p)
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ConstraintLessThanOrEqualToAnchor(anchor as SOSLayoutDimension, multiplier as Double = 1.0, offset as Double = 0.0) As SOSLayoutConstraint
		  // Creates a new constraint less or equal to the current layout dimension and another, using a multiplier and an offset.
		  
		  #If TargetMacOS Or TargetIOS
		    // - (NSLayoutConstraint *)constraintLessThanOrEqualToAnchor:(NSLayoutDimension *)anchor multiplier:(CGFloat)m constant:(CGFloat)c;
		    Declare Function constraintLessThanOrEqualToAnchor_multiplier_constant Lib "Foundation" Selector "constraintLessThanOrEqualToAnchor:multiplier:constant:" ( obj As ptr , anchor As Ptr , m As Double , c As Double ) As Ptr
		    
		    Dim p As ptr = constraintLessThanOrEqualToAnchor_multiplier_constant(mObj, anchor.handle, multiplier, offset)
		    If p = Nil Then
		      Return Nil
		    End If
		    
		    Return SOSLayoutConstraint.Create(p)
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ConstraintLessThanOrEqualToConstant(c as Double) As SOSLayoutConstraint
		  // Creates a constraint less than or equal to a specific constant.
		  #If TargetiOS or TargetMacOS
		    // - (NSLayoutConstraint *)constraintLessThanOrEqualToConstant:(CGFloat)c;
		    Declare Function constraintLessThanOrEqualToConstant Lib "Foundation" Selector "constraintLessThanOrEqualToConstant:" ( obj As ptr , c As Double ) As Ptr
		    Dim p As ptr = constraintLessThanOrEqualToConstant(mObj, c)
		    If p = Nil Then
		      Return Nil
		    End If
		    
		    Return SOSLayoutConstraint.Create(p)
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( Hidden )  Shared Function Create(p as ptr) As SOSLayoutDimension
		  If p = Nil Then
		    Return Nil
		  End If
		  
		  return new SOSLayoutDimension(p)
		End Function
	#tag EndMethod


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
