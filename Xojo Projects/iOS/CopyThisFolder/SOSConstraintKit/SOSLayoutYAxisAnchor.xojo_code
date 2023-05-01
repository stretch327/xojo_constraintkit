#tag Class
Class SOSLayoutYAxisAnchor
Inherits SOSLayoutAnchor
	#tag CompatibilityFlags = (TargetDesktop and (Target64Bit)) or  (TargetIOS and (Target64Bit))
	#tag Method, Flags = &h0
		Function AnchorWithOffsetToAnchor(otherAnchor as SOSLayoutYAxisAnchor) As SOSLayoutDimension
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
		Function ConstraintEqualToSystemSpacingBelowAnchor(anchor as SOSLayoutYAxisAnchor, multiplier as Double = 1.0) As SOSLayoutConstraint
		  // Returns a constraint that defines by how much the current anchor trails the specified anchor.
		  #If TargetMacOS or TargetIOS
		    // - (NSLayoutConstraint *)constraintEqualToSystemSpacingBelowAnchor:(NSLayoutYAxisAnchor *)anchor multiplier:(CGFloat)multiplier;
		    Declare Function constraintEqualToSystemSpacingBelowAnchor_multiplier Lib "Foundation" Selector "constraintEqualToSystemSpacingBelowAnchor:multiplier:" ( obj As ptr , anchor As Ptr , multiplier As Double ) As Ptr
		    
		    Dim p As ptr = constraintEqualToSystemSpacingBelowAnchor_multiplier(mObj, anchor.handle, multiplier)
		    If p = Nil Then
		      Return Nil
		    End If
		    
		    return SOSLayoutConstraint.Create(p)
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ConstraintGreaterThanOrEqualToSystemSpacingBelowAnchor(anchor as SOSLayoutYAxisAnchor, multiplier as Double = 1.0) As SOSLayoutConstraint
		  // Returns a constraint that defines the minimum amount by which the current anchor trails the specified anchor.
		  #If TargetMacOS or TargetIOS
		    // - (NSLayoutConstraint *)constraintGreaterThanOrEqualToSystemSpacingBelowAnchor:(NSLayoutYAxisAnchor *)anchor multiplier:(CGFloat)multiplier;
		    Declare Function constraintGreaterThanOrEqualToSystemSpacingBelowAnchor_multiplier Lib "Foundation" Selector "constraintGreaterThanOrEqualToSystemSpacingBelowAnchor:multiplier:" ( obj As ptr , anchor As Ptr , multiplier As Double ) As Ptr
		    
		    Dim p As ptr = constraintGreaterThanOrEqualToSystemSpacingBelowAnchor_multiplier(mObj, anchor.handle, multiplier)
		    If p = Nil Then
		      Return Nil
		    End If
		    
		    return SOSLayoutConstraint.Create(p)
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ConstraintLessThanOrEqualToSystemSpacingBelowAnchor(anchor as SOSLayoutYAxisAnchor, multiplier as Double = 1.0) As SOSLayoutConstraint
		  // Returns a constraint that defines the maximum amount by which the current anchor trails the specified anchor.
		  #If TargetMacOS Or TargetIOS
		    // - (NSLayoutConstraint *)constraintLessThanOrEqualToSystemSpacingBelowAnchor:(NSLayoutYAxisAnchor *)anchor multiplier:(CGFloat)multiplier;
		    Declare Function constraintLessThanOrEqualToSystemSpacingBelowAnchor_multiplier Lib "Foundation" Selector "constraintLessThanOrEqualToSystemSpacingBelowAnchor:multiplier:" ( obj As ptr , anchor As Ptr , multiplier As Double ) As Ptr
		    Dim p As ptr = constraintLessThanOrEqualToSystemSpacingBelowAnchor_multiplier(mObj, anchor.handle, multiplier)
		    If p = Nil Then
		      Return Nil
		    End If
		    
		    Return SOSLayoutConstraint.Create(p)
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( Hidden )  Shared Function Create(p as ptr) As SOSLayoutYAxisAnchor
		  return new SOSLayoutYAxisAnchor(p)
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
