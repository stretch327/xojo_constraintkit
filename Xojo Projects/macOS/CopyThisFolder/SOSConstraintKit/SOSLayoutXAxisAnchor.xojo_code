#tag Class
Class SOSLayoutXAxisAnchor
Inherits SOSLayoutAnchor
	#tag Method, Flags = &h0
		Function AnchorWithOffsetToAnchor(otherAnchor as SOSLayoutXAxisAnchor) As SOSLayoutDimension
		  // Creates a layout dimension object from two anchors.
		  // - (NSLayoutDimension *)anchorWithOffsetToAnchor:(NSLayoutYAxisAnchor *)otherAnchor;
		  Declare Function anchorWithOffsetToAnchor Lib "Foundation" Selector "anchorWithOffsetToAnchor:" ( obj As ptr , otherAnchor As Ptr ) As Ptr
		  
		  Dim p As ptr = anchorWithOffsetToAnchor(mObj, otherAnchor.handle)
		  If p = Nil Then
		    Return nil
		  End If
		  
		  return SOSLayoutDimension.Create(p)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ConstraintEqualToSystemSpacingAfterAnchor(anchor as SOSLayoutXAxisAnchor, multiplier as Double = 1.0) As SOSLayoutConstraint
		  // Returns a constraint that defines by how much the current anchor trails the specified anchor.
		  
		  #If TargetMacOS
		    // // - (NSLayoutConstraint *)constraintEqualToSystemSpacingBelowAnchor:(NSLayoutYAxisAnchor *)anchor multiplier:(CGFloat)multiplier; Declare Function constraintEqualToSystemSpacingBelowAnchor_multiplier Lib "Foundation" Selector "constraintEqualToSystemSpacingBelowAnchor:multiplier:" ( obj As ptr , anchor As Ptr , multiplier As Double ) As Ptr
		    Declare Function constraintEqualToSystemSpacingAfterAnchor_multiplier Lib "Foundation" Selector "constraintEqualToSystemSpacingAfterAnchor:multiplier:" ( obj As ptr , anchor As Ptr , multiplier As Double ) As Ptr
		    
		    Dim p As ptr = constraintEqualToSystemSpacingAfterAnchor_multiplier(mObj, anchor.handle, multiplier)
		    If p = Nil Then
		      Return Nil
		    End If
		    
		    return SOSLayoutConstraint.Create(p)
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ConstraintGreaterThanOrEqualToSystemSpacingAfterAnchor(anchor as SOSLayoutXAxisAnchor, multiplier as Double = 1.0) As SOSLayoutConstraint
		  // Returns a constraint that defines the minimum amount by which the current anchor trails the specified anchor.
		  
		  #If TargetMacOS
		    // - (NSLayoutConstraint *)constraintGreaterThanOrEqualToSystemSpacingAfterAnchor:(NSLayoutXAxisAnchor *)anchor multiplier:(CGFloat)multiplier;
		    Declare Function constraintGreaterThanOrEqualToSystemSpacingAfterAnchor_multiplier Lib "Foundation" Selector "constraintGreaterThanOrEqualToSystemSpacingAfterAnchor:multiplier:" ( obj As ptr , anchor As Ptr , multiplier As Double ) As Ptr
		    
		    Dim p As ptr = constraintGreaterThanOrEqualToSystemSpacingAfterAnchor_multiplier(mObj, anchor.handle, multiplier)
		    If p = Nil Then
		      Return Nil
		    End If
		    
		    return SOSLayoutConstraint.Create(p)
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ConstraintLessThanOrEqualToSystemSpacingAfterAnchor(anchor as SOSLayoutXAxisAnchor, multiplier as Double = 1.0) As SOSLayoutConstraint
		  // Returns a constraint that defines the maximum amount by which the current anchor trails the specified anchor.
		  
		  #If TargetMacOS
		    // - (NSLayoutConstraint *)constraintLessThanOrEqualToSystemSpacingAfterAnchor:(NSLayoutXAxisAnchor *)anchor multiplier:(CGFloat)multiplier;
		    Declare Function constraintLessThanOrEqualToSystemSpacingAfterAnchor_multiplier Lib "Foundation" Selector "constraintLessThanOrEqualToSystemSpacingAfterAnchor:multiplier:" ( obj As ptr , anchor As Ptr , multiplier As Double ) As Ptr
		    
		    Dim p As ptr = constraintLessThanOrEqualToSystemSpacingAfterAnchor_multiplier(mObj, anchor.handle, multiplier)
		    If p = Nil Then
		      Return Nil
		    End If
		    
		    Return SOSLayoutConstraint.Create(p)
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( Hidden )  Shared Function Create(p as ptr) As SOSLayoutXAxisAnchor
		  return new SOSLayoutXAxisAnchor(p)
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
