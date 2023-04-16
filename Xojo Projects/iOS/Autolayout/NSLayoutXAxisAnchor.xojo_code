#tag Class
Class NSLayoutXAxisAnchor
Inherits Autolayout.NSLayoutAnchor
	#tag Method, Flags = &h0
		Function AnchorWithOffsetToAnchor(otherAnchor as NSLayoutXAxisAnchor) As NSLayoutDimension
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
		Function ConstraintEqualToSystemSpacingAfterAnchor(anchor as NSLayoutYAxisAnchor, multiplier as Double = 1.0) As NSLayoutConstraint
		  #If TargetMacOS Or TargetIOS
		    // // - (NSLayoutConstraint *)constraintEqualToSystemSpacingBelowAnchor:(NSLayoutYAxisAnchor *)anchor multiplier:(CGFloat)multiplier; Declare Function constraintEqualToSystemSpacingBelowAnchor_multiplier Lib "Foundation" Selector "constraintEqualToSystemSpacingBelowAnchor:multiplier:" ( obj As ptr , anchor As Ptr , multiplier As Double ) As Ptr
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
		Function constraintGreaterThanOrEqualToSystemSpacingAfterAnchor(anchor as NSLayoutYAxisAnchor, multiplier as Double = 1.0) As NSLayoutConstraint
		  #If TargetMacOS Or TargetIOS
		    // - (NSLayoutConstraint *)constraintGreaterThanOrEqualToSystemSpacingAfterAnchor:(NSLayoutXAxisAnchor *)anchor multiplier:(CGFloat)multiplier;
		    Declare Function constraintGreaterThanOrEqualToSystemSpacingAfterAnchor_multiplier Lib "Foundation" Selector "constraintGreaterThanOrEqualToSystemSpacingAfterAnchor:multiplier:" ( obj As ptr , anchor As Ptr , multiplier As Double ) As Ptr
		    
		    Dim p As ptr = constraintGreaterThanOrEqualToSystemSpacingAfterAnchor_multiplier(mObj, anchor.handle, multiplier)
		    If p = Nil Then
		      Return Nil
		    End If
		    
		    return NSLayoutConstraint.Create(p)
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function constraintLessThanOrEqualToSystemSpacingAfterAnchor(anchor as NSLayoutYAxisAnchor, multiplier as Double = 1.0) As NSLayoutConstraint
		  #If TargetMacOS Or TargetIOS
		    // - (NSLayoutConstraint *)constraintLessThanOrEqualToSystemSpacingAfterAnchor:(NSLayoutXAxisAnchor *)anchor multiplier:(CGFloat)multiplier;
		    Declare Function constraintLessThanOrEqualToSystemSpacingAfterAnchor_multiplier Lib "Foundation" Selector "constraintLessThanOrEqualToSystemSpacingAfterAnchor:multiplier:" ( obj As ptr , anchor As Ptr , multiplier As Double ) As Ptr
		    
		    Dim p As ptr = constraintLessThanOrEqualToSystemSpacingAfterAnchor_multiplier(mObj, anchor.handle, multiplier)
		    If p = Nil Then
		      Return Nil
		    End If
		    
		    Return NSLayoutConstraint.Create(p)
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( Hidden )  Shared Function Create(p as ptr) As NSLayoutXAxisAnchor
		  return new NSLayoutXAxisAnchor(p)
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
