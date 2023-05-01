#tag Class
Class SOSDirectionalEdgeInsets
	#tag Method, Flags = &h21
		Attributes( Hidden ) Private Sub Constructor(p as ptr)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Handle() As Ptr
		  Return mObj
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function Make(top as Double, leading as Double, bottom as Double, trailing as Double) As SOSDirectionalEdgeInsets
		  // NSDirectionalEdgeInsets NSDirectionalEdgeInsetsMake(CGFloat top, CGFloat leading, CGFloat bottom, CGFloat trailing);
		  Declare Function NSDirectionalEdgeInsetsMake Lib "Foundation" ( top As CGFloat, leading As CGFloat, bottom As CGFloat, trailing As CGFloat ) As Ptr
		  
		  
		  Dim p As ptr = NSDirectionalEdgeInsetsMake(top, leading, bottom, trailing)
		  If p = Nil Then
		    Return Nil
		  End If
		  
		  return new SOSDirectionalEdgeInsets(p)
		End Function
	#tag EndMethod


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  // Bottom of the object
			  #If TargetiOS
			    Declare Function getBottom Lib "Foundation" Selector "bottom" (obj As ptr) As CGFloat
			    
			    Return getBottom(mObj)
			  #EndIf
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  // Bottom of the object
			  #If TargetiOS
			    Declare Sub setBottom Lib "Foundation" Selector "setBottom:" (obj As ptr, value as CGFloat)
			    
			    setBottom(mObj, value)
			  #EndIf
			End Set
		#tag EndSetter
		Bottom As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  // Leading edge of the object
			  #If TargetiOS
			    Declare Function getLeading Lib "Foundation" Selector "leading" (obj As ptr) As CGFloat
			    
			    Return getLeading(mObj)
			  #EndIf
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  // Leading edge of the object
			  #If TargetiOS
			    Declare Sub setLeading Lib "Foundation" Selector "setLeading:" (obj As ptr, value As CGFloat)
			    
			    setLeading(mObj, value)
			  #EndIf
			End Set
		#tag EndSetter
		Leading As Double
	#tag EndComputedProperty

	#tag Property, Flags = &h21
		Attributes( Hidden ) Private mObj As Ptr
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  // Top edge of the object
			  #If TargetiOS
			    Declare Function getTop Lib "Foundation" Selector "top" (obj As ptr) As CGFloat
			    
			    Return getTop(mObj)
			  #EndIf
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  // Top edge of the object
			  #If TargetiOS
			    Declare Sub setTop Lib "Foundation" Selector "setTop:" (obj As ptr, value As CGFloat)
			    
			    setTop(mObj, value)
			  #EndIf
			End Set
		#tag EndSetter
		Top As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  // Trailing edge of the object
			  #If TargetiOS
			    Declare Function getTrailing Lib "Foundation" Selector "trailing" (obj As ptr) As CGFloat
			    
			    Return getTrailing(mObj)
			  #EndIf
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  // Trailing edgs of the object
			  #If TargetiOS
			    Declare Sub setTrailing Lib "Foundation" Selector "setTrailing:" (obj As ptr, value As CGFloat)
			    
			    setTrailing(mObj, value)
			  #EndIf
			End Set
		#tag EndSetter
		Trailing As Double
	#tag EndComputedProperty


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
			Name="Bottom"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Double"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Leading"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Double"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Trailing"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Double"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
