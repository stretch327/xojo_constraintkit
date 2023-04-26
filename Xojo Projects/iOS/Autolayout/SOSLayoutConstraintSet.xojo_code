#tag Class
Class SOSLayoutConstraintSet
	#tag Method, Flags = &h0
		Sub AddConstraint(c as SOSLayoutConstraint)
		  // Adds the specified constraint to the set and sets its Active status to that of the set
		  c.Active = mActive
		  
		  mConstraints.add c
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ConstraintAtIndex(index as integer) As SOSLayoutConstraint
		  // returns the constraint at the specified index
		  Return mConstraints(index)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(active as Boolean)
		  // Creates a new constraint set and sets the active status
		  mActive = active
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub RemoveAll()
		  // Removes all constraints from the set 
		  mConstraints.RemoveAll
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub RemoveConstraint(c as SOSLayoutConstraint)
		  // Removes the specified constraint from the set
		  RemoveConstraint(mConstraints.IndexOf(c))
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub RemoveConstraintAt(index as integer)
		  // Removes the constraint at the specified index from the set
		  
		  If index < 0 Or index > UBound(mConstraints) Then
		    mConstraints.RemoveAt(index)
		  End If
		End Sub
	#tag EndMethod


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  // Returns true if the SOSLayoutConstraintSet is active
			  Return mActive
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  // Sets the Active status of every constraint in the set
			  
			  mActive = value
			  
			  For i As Integer = 0 To UBound(mConstraints)
			    mConstraints(i).Active = mActive
			  Next
			End Set
		#tag EndSetter
		Active As Boolean
	#tag EndComputedProperty

	#tag Property, Flags = &h21
		Attributes( Hidden ) Private mActive As Boolean
	#tag EndProperty

	#tag Property, Flags = &h21
		Attributes( Hidden ) Private mConstraints() As SOSLayoutConstraint
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
		#tag ViewProperty
			Name="mConstraints()"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
