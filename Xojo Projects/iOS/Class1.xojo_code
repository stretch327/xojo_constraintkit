#tag Class
Protected Class Class1
	#tag DelegateDeclaration, Flags = &h0
		Delegate Sub DelegateMethod()
	#tag EndDelegateDeclaration

	#tag Method, Flags = &h21
		Private Sub PrivateMethod()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub PublicMethod()
		  // First line is docs
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h21
		Private PrivateProperty As Integer
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  // GETTER: First line is docs
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  // SETTER: First line is docs
			  
			End Set
		#tag EndSetter
		PublicProperty As Integer
	#tag EndComputedProperty


	#tag Structure, Name = StructureObj, Flags = &h0
		x as cgfloat
		y as cgfloat
	#tag EndStructure


	#tag Enum, Name = Enumeration, Type = Integer, Flags = &h0
		one
		  two
		three = 5
	#tag EndEnum


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
			Name="PublicProperty"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
