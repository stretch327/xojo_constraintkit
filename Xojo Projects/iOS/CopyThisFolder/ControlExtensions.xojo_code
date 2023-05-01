#tag Module
Protected Module ControlExtensions
	#tag CompatibilityFlags = ( TargetIOS and ( Target64Bit ) )
	#tag Method, Flags = &h0
		Sub LineBreakEnabled(extends label as MobileLabel, assigns value as Boolean)
		  // Enables/Disables line breaks in the specified label control
		  #If TargetiOS
		    // @property(nonatomic) NSLineBreakStrategy lineBreakStrategy;
		    Declare Sub setLineBreakStrategy Lib "Foundation" Selector "setLineBreakStrategy:" (obj As ptr, value As Integer)
		    
		    setLineBreakStrategy(label.Handle, If(value, &hFFFF, 0))
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function NumberOfLines(extends label as MobileLabel) As Integer
		  // Returns the number of lines in the label control
		  #If TargetiOS
		    // @property(nonatomic) NSInteger numberOfLines;
		    Declare Function getNumberOfLines Lib "Foundation" Selector "numberOfLines" (obj As ptr) As Integer
		    
		    Return getNumberOfLines(label.Handle)
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub NumberOfLines(extends label as MobileLabel, assigns value as integer)
		  // Sets the number of lines in the label control
		  #If TargetiOS
		    // @property(nonatomic) NSInteger numberOfLines;
		    Declare Sub setNumberOfLines Lib "Foundation" Selector "setNumberOfLines:" (obj As ptr, value As Integer)
		    
		    setNumberOfLines(label.Handle, value) // infinite = 0
		  #EndIf
		End Sub
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
End Module
#tag EndModule