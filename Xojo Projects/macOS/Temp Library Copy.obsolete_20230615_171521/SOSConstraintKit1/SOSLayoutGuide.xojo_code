#tag Class
Class SOSLayoutGuide
	#tag Method, Flags = &h21
		Attributes( Hidden ) Private Sub Constructor(p as ptr)
		  mObj = p
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( Hidden )  Shared Function Create(p as ptr) As SOSLayoutGuide
		  If p = Nil Then 
		    Return Nil
		  End If
		  
		  return new SOSLayoutGuide(p)
		End Function
	#tag EndMethod


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  // The Bottom anchor
			  
			  #If TargetMacOS
			    // @property(nonatomic, readonly, strong) NSLayoutYAxisAnchor *bottomAnchor;
			    Declare Function getBottomAnchor Lib "Foundation" Selector "bottomAnchor" (obj As ptr) As Ptr
			    
			    Dim p As ptr = getBottomAnchor(mObj)
			    If p = Nil Then
			      Return Nil
			    End If
			    
			    return SOSLayoutYAxisAnchor.create(p)
			  #endif
			End Get
		#tag EndGetter
		BottomAnchor As SOSLayoutYAxisAnchor
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  // The Center X anchor
			  
			  #If TargetMacOS
			    // @property(nonatomic, readonly, strong) NSLayoutXAxisAnchor *centerXAnchor;
			    Declare Function getCenterXAnchor Lib "Foundation" Selector "centerXAnchor" (obj As ptr) As Ptr
			    
			    Dim p As ptr = getCenterXAnchor(mObj)
			    If p = Nil Then
			      Return Nil
			    End If
			    
			    Return SOSLayoutXAxisAnchor.create(p)
			  #endif
			End Get
		#tag EndGetter
		CenterXAnchor As SOSLayoutXAxisAnchor
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  // The Center Y anchor
			  
			  #If TargetMacOS
			    // @property(nonatomic, readonly, strong) NSLayoutYAxisAnchor *centerYAnchor;
			    Declare Function getCenterYAnchor Lib "Foundation" Selector "centerYAnchor" (obj As ptr) As Ptr
			    
			    Dim p As ptr = getCenterYAnchor(mObj)
			    If p = Nil Then
			      Return Nil
			    End If
			    
			    Return SOSLayoutYAxisAnchor.create(p)
			  #endif
			End Get
		#tag EndGetter
		CenterYAnchor As SOSLayoutYAxisAnchor
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  // The Height anchor
			  
			  #If TargetMacOS
			    // @property(nonatomic, readonly, strong) NSLayoutDimension *heightAnchor;
			    Declare Function getHeightAnchor Lib "Foundation" Selector "heightAnchor" (obj As ptr) As Ptr
			    
			    Dim p As ptr = getHeightAnchor(mObj)
			    If p = Nil Then
			      Return Nil
			    End If
			    
			    Return SOSLayoutDimension.create(p)
			  #endif
			End Get
		#tag EndGetter
		HeightAnchor As SOSLayoutDimension
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  // The Identifier for this anchor
			  
			  #If TargetMacOS
			    // @property(nonatomic, copy) NSString *identifier;
			    Declare Function getIdentifier Lib "Foundation" Selector "identifier" (obj As ptr) As CFStringRef
			    
			    Return getIdentifier(mObj)
			    
			    
			  #endif
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #if TargetMacOS
			    Declare Sub setIdentifier Lib "Foundation" Selector "setIdentifier:" (obj As ptr, value As CFStringRef)
			    
			    setIdentifier(mObj, value)
			    
			  #endif
			End Set
		#tag EndSetter
		Identifier As String
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  // The Layout Frame for this anchor
			  
			  #If TargetMacOS
			    // @property(nonatomic, readonly) CGRect layoutFrame;
			    Declare Function getLayoutFrame Lib "Foundation" Selector "layoutFrame" (obj As ptr) As CGRect
			    
			    return getLayoutFrame(mObj)
			  #endif
			End Get
		#tag EndGetter
		LayoutFrame As CGRect
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  // The Leading anchor
			  
			  #If TargetMacOS
			    // @property(nonatomic, readonly, strong) NSLayoutXAxisAnchor *leadingAnchor;
			    Declare Function getLeadingAnchor Lib "Foundation" Selector "leadingAnchor" (obj As ptr) As Ptr
			    
			    Dim p As ptr = getLeadingAnchor(mObj)
			    If p = Nil Then
			      Return Nil
			    End If
			    
			    Return SOSLayoutXAxisAnchor.create(p)
			  #EndIf
			End Get
		#tag EndGetter
		LeadingAnchor As SOSLayoutXAxisAnchor
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  // The left anchor
			  
			  #If TargetMacOS
			    // @property(nonatomic, readonly, strong) NSLayoutXAxisAnchor *leftAnchor;
			    Declare Function getLeftAnchor Lib "Foundation" Selector "leftAnchor" (obj As ptr) As Ptr
			    
			    Dim p As ptr = getLeftAnchor(mObj)
			    If p = Nil Then
			      Return Nil
			    End If
			    
			    Return SOSLayoutXAxisAnchor.create(p)
			  #EndIf
			End Get
		#tag EndGetter
		LeftAnchor As SOSLayoutXAxisAnchor
	#tag EndComputedProperty

	#tag Property, Flags = &h21
		Attributes( Hidden ) Private mObj As Ptr
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  // The Right anchor
			  
			  #If TargetMacOS
			    // @property(nonatomic, readonly, strong) NSLayoutXAxisAnchor *rightAnchor;
			    Declare Function getRightAnchor Lib "Foundation" Selector "rightAnchor" (obj As ptr) As Ptr
			    
			    Dim p As ptr = getRightAnchor(mObj)
			    If p = Nil Then
			      Return Nil
			    End If
			    
			    Return SOSLayoutXAxisAnchor.create(p)
			  #EndIf
			End Get
		#tag EndGetter
		RightAnchor As SOSLayoutXAxisAnchor
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  // The Top anchor
			  
			  #If TargetMacOS
			    // @property(nonatomic, readonly, strong) NSLayoutYAxisAnchor *bottomAnchor;
			    Declare Function getTopAnchor Lib "Foundation" Selector "topAnchor" (obj As ptr) As Ptr
			    
			    Dim p As ptr = getTopAnchor(mObj)
			    If p = Nil Then
			      Return Nil
			    End If
			    
			    return SOSLayoutYAxisAnchor.create(p)
			  #EndIf
			End Get
		#tag EndGetter
		TopAnchor As SOSLayoutYAxisAnchor
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  // The Trailing anchor
			  
			  #If TargetMacOS
			    // @property(nonatomic, readonly, strong) NSLayoutXAxisAnchor *trailingAnchor;
			    Declare Function getTrailingAnchor Lib "Foundation" Selector "trailingAnchor" (obj As ptr) As Ptr
			    
			    Dim p As ptr = getTrailingAnchor(mObj)
			    If p = Nil Then
			      Return Nil
			    End If
			    
			    Return SOSLayoutXAxisAnchor.create(p)
			  #EndIf
			End Get
		#tag EndGetter
		TrailingAnchor As SOSLayoutXAxisAnchor
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  // The Width anchor
			  
			  #If TargetMacOS
			    // @property(nonatomic, readonly, strong) NSLayoutDimension *widthAnchor;
			    Declare Function getWidthAnchor Lib "Foundation" Selector "widthAnchor" (obj As ptr) As Ptr
			    
			    Dim p As ptr = getWidthAnchor(mObj)
			    If p = Nil Then
			      Return Nil
			    End If
			    
			    Return SOSLayoutDimension.create(p)
			  #EndIf
			End Get
		#tag EndGetter
		WidthAnchor As SOSLayoutDimension
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
			Name="Identifier"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
