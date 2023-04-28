#tag Class
Class SOSLayoutDimension
Inherits SOSLayoutAnchor
	#tag Method, Flags = &h0
		Function constraintEqualToAnchor(anchor as SOSLayoutDimension, multiplier as Double = 1.0, offset as Double = 0.0) As SOSLayoutConstraint
		  // Creates a new constraint equal to the current layout dimension and another, using a multiplier and an offset.
		  
		  // - (NSLayoutConstraint *)constraintEqualToAnchor:(NSLayoutDimension *)anchor multiplier:(CGFloat)m constant:(CGFloat)c;
		  Declare Function constraintEqualToAnchor_multiplier_constant Lib "Foundation" Selector "constraintEqualToAnchor:multiplier:constant:" ( obj As ptr , anchor As Ptr , m As Double , c As Double ) As Ptr
		  
		  Dim p As ptr = constraintEqualToAnchor_multiplier_constant(mObj, anchor.handle, multiplier, offset)
		  If p = Nil Then
		    Return Nil
		  End If
		  
		  return SOSLayoutConstraint.Create(p)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function constraintGreaterThanOrEqualToAnchor(anchor as SOSLayoutDimension, multiplier as Double = 1.0, offset as Double = 0.0) As SOSLayoutConstraint
		  // Creates a new constraint greater or equal to the current layout dimension and another, using a multiplier and an offset.
		  
		  // - (NSLayoutConstraint *)constraintGreaterThanOrEqualToAnchor:(NSLayoutDimension *)anchor multiplier:(CGFloat)m constant:(CGFloat)c;
		  Declare Function constraintGreaterThanOrEqualToAnchor_multiplier_constant Lib "Foundation" Selector "constraintGreaterThanOrEqualToAnchor:multiplier:constant:" ( obj As ptr , anchor As Ptr , m As Double , c As Double ) As Ptr
		  
		  Dim p As ptr = constraintGreaterThanOrEqualToAnchor_multiplier_constant(mObj, anchor.handle, multiplier, offset)
		  If p = Nil Then
		    Return Nil
		  End If
		  
		  Return SOSLayoutConstraint.Create(p)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function constraintLessThanOrEqualToAnchor(anchor as SOSLayoutDimension, multiplier as Double = 1.0, offset as Double = 0.0) As SOSLayoutConstraint
		  // Creates a new constraint less or equal to the current layout dimension and another, using a multiplier and an offset.
		  
		  // - (NSLayoutConstraint *)constraintLessThanOrEqualToAnchor:(NSLayoutDimension *)anchor multiplier:(CGFloat)m constant:(CGFloat)c;
		  Declare Function constraintLessThanOrEqualToAnchor_multiplier_constant Lib "Foundation" Selector "constraintLessThanOrEqualToAnchor:multiplier:constant:" ( obj As ptr , anchor As Ptr , m As Double , c As Double ) As Ptr
		  
		  Dim p As ptr = constraintLessThanOrEqualToAnchor_multiplier_constant(mObj, anchor.handle, multiplier, offset)
		  If p = Nil Then
		    Return Nil
		  End If
		  
		  Return SOSLayoutConstraint.Create(p)
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
