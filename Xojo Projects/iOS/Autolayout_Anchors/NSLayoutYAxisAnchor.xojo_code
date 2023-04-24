#tag Class
Class NSLayoutYAxisAnchor
Inherits NSLayoutAnchor
	#tag Method, Flags = &h0
		Function AnchorWithOffsetToAnchor(otherAnchor as NSLayoutYAxisAnchor) As NSLayoutDimension
		  // - (NSLayoutDimension *)anchorWithOffsetToAnchor:(NSLayoutYAxisAnchor *)otherAnchor;
		  Declare Function anchorWithOffsetToAnchor Lib "Foundation" Selector "anchorWithOffsetToAnchor:" ( obj As ptr , otherAnchor As Ptr ) As Ptr
		  
		  Dim p As ptr = anchorWithOffsetToAnchor(mObj, otherAnchor.handle)
		  If p = Nil Then
		    Return nil
		  End If
		  
		  return NSLayoutDimension.Create(p)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ConstraintEqualToSystemSpacingBelowAnchor(anchor as NSLayoutYAxisAnchor, multiplier as Double = 1.0) As NSLayoutConstraint
		  #If TargetMacOS or TargetIOS
		    // - (NSLayoutConstraint *)constraintEqualToSystemSpacingBelowAnchor:(NSLayoutYAxisAnchor *)anchor multiplier:(CGFloat)multiplier;
		    Declare Function constraintEqualToSystemSpacingBelowAnchor_multiplier Lib "Foundation" Selector "constraintEqualToSystemSpacingBelowAnchor:multiplier:" ( obj As ptr , anchor As Ptr , multiplier As Double ) As Ptr
		    
		    Dim p As ptr = constraintEqualToSystemSpacingBelowAnchor_multiplier(mObj, anchor.handle, multiplier)
		    If p = Nil Then
		      Return Nil
		    End If
		    
		    return NSLayoutConstraint.Create(p)
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function constraintGreaterThanOrEqualToSystemSpacingBelowAnchor(anchor as NSLayoutYAxisAnchor, multiplier as Double = 1.0) As NSLayoutConstraint
		  #If TargetMacOS or TargetIOS
		    // - (NSLayoutConstraint *)constraintGreaterThanOrEqualToSystemSpacingBelowAnchor:(NSLayoutYAxisAnchor *)anchor multiplier:(CGFloat)multiplier;
		    Declare Function constraintGreaterThanOrEqualToSystemSpacingBelowAnchor_multiplier Lib "Foundation" Selector "constraintGreaterThanOrEqualToSystemSpacingBelowAnchor:multiplier:" ( obj As ptr , anchor As Ptr , multiplier As Double ) As Ptr
		    
		    Dim p As ptr = constraintGreaterThanOrEqualToSystemSpacingBelowAnchor_multiplier(mObj, anchor.handle, multiplier)
		    If p = Nil Then
		      Return Nil
		    End If
		    
		    return NSLayoutConstraint.Create(p)
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function constraintLessThanOrEqualToSystemSpacingBelowAnchor(anchor as NSLayoutYAxisAnchor, multiplier as Double = 1.0) As NSLayoutConstraint
		  #If TargetMacOS Or TargetIOS
		    // - (NSLayoutConstraint *)constraintLessThanOrEqualToSystemSpacingBelowAnchor:(NSLayoutYAxisAnchor *)anchor multiplier:(CGFloat)multiplier;
		    Declare Function constraintLessThanOrEqualToSystemSpacingBelowAnchor_multiplier Lib "Foundation" Selector "constraintLessThanOrEqualToSystemSpacingBelowAnchor:multiplier:" ( obj As ptr , anchor As Ptr , multiplier As Double ) As Ptr
		    Dim p As ptr = constraintLessThanOrEqualToSystemSpacingBelowAnchor_multiplier(mObj, anchor.handle, multiplier)
		    If p = Nil Then
		      Return Nil
		    End If
		    
		    Return NSLayoutConstraint.Create(p)
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( Hidden )  Shared Function Create(p as ptr) As NSLayoutYAxisAnchor
		  return new NSLayoutYAxisAnchor(p)
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
