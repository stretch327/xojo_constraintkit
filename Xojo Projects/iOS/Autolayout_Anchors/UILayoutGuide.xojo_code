#tag Class
Class UILayoutGuide
	#tag Method, Flags = &h21
		Private Sub Constructor(p as ptr)
		  mObj = p
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( Hidden )  Shared Function Create(p as ptr) As UILayoutGuide
		  If p = Nil Then 
		    Return Nil
		  End If
		  
		  return new UILayoutGuide(p)
		End Function
	#tag EndMethod


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if TargetiOS
			    // @property(nonatomic, readonly, strong) NSLayoutYAxisAnchor *bottomAnchor;
			    Declare Function getBottomAnchor Lib "Foundation" Selector "bottomAnchor" (obj As ptr) As Ptr
			    
			    Dim p As ptr = getBottomAnchor(mObj)
			    If p = Nil Then
			      Return Nil
			    End If
			    
			    return NSLayoutYAxisAnchor.create(p)
			  #endif
			End Get
		#tag EndGetter
		BottomAnchor As NSLayoutYAxisAnchor
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if TargetiOS
			    // @property(nonatomic, readonly, strong) NSLayoutXAxisAnchor *centerXAnchor;
			    Declare Function getCenterXAnchor Lib "Foundation" Selector "centerXAnchor" (obj As ptr) As Ptr
			    
			    Dim p As ptr = getCenterXAnchor(mObj)
			    If p = Nil Then
			      Return Nil
			    End If
			    
			    Return NSLayoutXAxisAnchor.create(p)
			  #endif
			End Get
		#tag EndGetter
		CenterXAnchor As NSLayoutXAxisAnchor
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if TargetiOS
			    // @property(nonatomic, readonly, strong) NSLayoutYAxisAnchor *centerYAnchor;
			    Declare Function getCenterYAnchor Lib "Foundation" Selector "centerYAnchor" (obj As ptr) As Ptr
			    
			    Dim p As ptr = getCenterYAnchor(mObj)
			    If p = Nil Then
			      Return Nil
			    End If
			    
			    Return NSLayoutYAxisAnchor.create(p)
			  #endif
			End Get
		#tag EndGetter
		CenterYAnchor As NSLayoutYAxisAnchor
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #If TargetiOS
			    // @property(nonatomic, readonly, strong) NSLayoutDimension *heightAnchor;
			    Declare Function getHeightAnchor Lib "Foundation" Selector "heightAnchor" (obj As ptr) As Ptr
			    
			    Dim p As ptr = getHeightAnchor(mObj)
			    If p = Nil Then
			      Return Nil
			    End If
			    
			    Return NSLayoutDimension.create(p)
			  #endif
			End Get
		#tag EndGetter
		HeightAnchor As NSLayoutDimension
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if TargetiOS
			    // @property(nonatomic, copy) NSString *identifier;
			    Declare Function getIdentifier Lib "Foundation" Selector "identifier" (obj As ptr) As CFStringRef
			    
			    Return getIdentifier(mObj)
			    
			    
			  #endif
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #if TargetiOS
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
			  #if TargetiOS
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
			  #If TargetiOS
			    // @property(nonatomic, readonly, strong) NSLayoutXAxisAnchor *leadingAnchor;
			    Declare Function getLeadingAnchor Lib "Foundation" Selector "leadingAnchor" (obj As ptr) As Ptr
			    
			    Dim p As ptr = getLeadingAnchor(mObj)
			    If p = Nil Then
			      Return Nil
			    End If
			    
			    Return NSLayoutXAxisAnchor.create(p)
			  #EndIf
			End Get
		#tag EndGetter
		LeadingAnchor As NSLayoutXAxisAnchor
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #If TargetiOS
			    // @property(nonatomic, readonly, strong) NSLayoutXAxisAnchor *leftAnchor;
			    Declare Function getLeftAnchor Lib "Foundation" Selector "leftAnchor" (obj As ptr) As Ptr
			    
			    Dim p As ptr = getLeftAnchor(mObj)
			    If p = Nil Then
			      Return Nil
			    End If
			    
			    Return NSLayoutXAxisAnchor.create(p)
			  #EndIf
			End Get
		#tag EndGetter
		LeftAnchor As NSLayoutXAxisAnchor
	#tag EndComputedProperty

	#tag Property, Flags = &h21
		Private mObj As Ptr
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #If TargetiOS
			    // @property(nonatomic, readonly, strong) NSLayoutXAxisAnchor *rightAnchor;
			    Declare Function getRightAnchor Lib "Foundation" Selector "rightAnchor" (obj As ptr) As Ptr
			    
			    Dim p As ptr = getRightAnchor(mObj)
			    If p = Nil Then
			      Return Nil
			    End If
			    
			    Return NSLayoutXAxisAnchor.create(p)
			  #EndIf
			End Get
		#tag EndGetter
		RightAnchor As NSLayoutXAxisAnchor
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #If TargetiOS
			    // @property(nonatomic, readonly, strong) NSLayoutYAxisAnchor *bottomAnchor;
			    Declare Function getTopAnchor Lib "Foundation" Selector "topAnchor" (obj As ptr) As Ptr
			    
			    Dim p As ptr = getTopAnchor(mObj)
			    If p = Nil Then
			      Return Nil
			    End If
			    
			    return NSLayoutYAxisAnchor.create(p)
			  #EndIf
			End Get
		#tag EndGetter
		TopAnchor As NSLayoutYAxisAnchor
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #If TargetiOS
			    // @property(nonatomic, readonly, strong) NSLayoutXAxisAnchor *trailingAnchor;
			    Declare Function getTrailingAnchor Lib "Foundation" Selector "trailingAnchor" (obj As ptr) As Ptr
			    
			    Dim p As ptr = getTrailingAnchor(mObj)
			    If p = Nil Then
			      Return Nil
			    End If
			    
			    Return NSLayoutXAxisAnchor.create(p)
			  #EndIf
			End Get
		#tag EndGetter
		TrailingAnchor As NSLayoutXAxisAnchor
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #If TargetiOS
			    // @property(nonatomic, readonly, strong) NSLayoutDimension *widthAnchor;
			    Declare Function getWidthAnchor Lib "Foundation" Selector "widthAnchor" (obj As ptr) As Ptr
			    
			    Dim p As ptr = getWidthAnchor(mObj)
			    If p = Nil Then
			      Return Nil
			    End If
			    
			    Return NSLayoutDimension.create(p)
			  #EndIf
			End Get
		#tag EndGetter
		WidthAnchor As NSLayoutDimension
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
