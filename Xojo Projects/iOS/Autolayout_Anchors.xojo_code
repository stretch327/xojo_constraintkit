#tag Module
Protected Module Autolayout_Anchors
	#tag Method, Flags = &h0
		Function BottomAnchor(extends view as MobileScreen) As NSLayoutYAxisAnchor
		  #If TargetiOS
		    // @property(nonatomic, readonly, strong) NSLayoutYAxisAnchor *bottomAnchor
		    Declare Function getBottomAnchor Lib "Foundation" Selector "bottomAnchor" (obj As ptr) As Ptr
		    
		    return NSLayoutYAxisAnchor.Create(getBottomAnchor(view.Handle))
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function BottomAnchor(extends view as MobileUIControl) As NSLayoutYAxisAnchor
		  #If TargetiOS
		    // @property(nonatomic, readonly, strong) NSLayoutYAxisAnchor *bottomAnchor
		    Declare Function getBottomAnchor Lib "Foundation" Selector "bottomAnchor" (obj As ptr) As Ptr
		    
		    Return NSLayoutYAxisAnchor.Create(getBottomAnchor(view.Handle))
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function CenterXAnchor(extends view as MobileScreen) As NSLayoutXAxisAnchor
		  #if TargetiOS
		    // @property(nonatomic, readonly, strong) NSLayoutXAxisAnchor *centerXAnchor;
		    Declare Function getCenterXAnchor Lib "Foundation" Selector "centerXAnchor" (obj As ptr) As Ptr
		    
		    return NSLayoutXAxisAnchor.create(getCenterXAnchor(view.Handle))
		  #endif
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function CenterXAnchor(extends view as MobileUIControl) As NSLayoutXAxisAnchor
		  #if TargetiOS
		    // @property(nonatomic, readonly, strong) NSLayoutXAxisAnchor *centerXAnchor;
		    Declare Function getCenterXAnchor Lib "Foundation" Selector "centerXAnchor" (obj As ptr) As Ptr
		    
		    return NSLayoutXAxisAnchor.create(getCenterXAnchor(view.Handle))
		  #endif
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function CenterYAnchor(extends view as MobileScreen) As NSLayoutYAxisAnchor
		  #If TargetiOS
		    // @property(nonatomic, readonly, strong) NSLayoutYAxisAnchor *centerYAnchor;
		    Declare Function getCenterYAnchor Lib "Foundation" selector "centerYAnchor" (obj as ptr) as Ptr
		    
		    return NSLayoutYAxisAnchor.Create(getCenterYAnchor(view.Handle))
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function CenterYAnchor(extends view as MobileUIControl) As NSLayoutYAxisAnchor
		  #If TargetiOS
		    // @property(nonatomic, readonly, strong) NSLayoutYAxisAnchor *centerYAnchor;
		    Declare Function getCenterYAnchor Lib "Foundation" selector "centerYAnchor" (obj as ptr) as Ptr
		    
		    return NSLayoutYAxisAnchor.Create(getCenterYAnchor(view.Handle))
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function FirstBaselineAnchor(extends view as MobileUIControl) As NSLayoutYAxisAnchor
		  #If TargetiOS
		    // @property(nonatomic, readonly, strong) NSLayoutYAxisAnchor *firstBaselineAnchor;
		    Declare Function getFirstBaselineAnchor Lib "Foundation" Selector "firstBaselineAnchor" (obj As ptr) As Ptr
		    
		    return NSLayoutYAxisAnchor.Create(getFirstBaselineAnchor(view.Handle))
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function HeightAnchor(extends view as MobileScreen) As NSLayoutDimension
		  #If TargetiOS
		    // @property(nonatomic, readonly, strong) NSLayoutDimension *heightAnchor;
		    Declare Function getHeightAnchor Lib "Foundation" Selector "heightAnchor" (obj As ptr) As Ptr
		    
		    Return  NSLayoutDimension.create(getHeightAnchor(view.Handle))
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function HeightAnchor(extends view as MobileUIControl) As NSLayoutDimension
		  #If TargetiOS
		    // @property(nonatomic, readonly, strong) NSLayoutDimension *heightAnchor;
		    Declare Function getHeightAnchor Lib "Foundation" Selector "heightAnchor" (obj As ptr) As Ptr
		    
		    Return  NSLayoutDimension.create(getHeightAnchor(view.Handle))
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function LastBaselineAnchor(extends view as MobileUIControl) As NSLayoutYAxisAnchor
		  #If TargetiOS
		    // @property(nonatomic, readonly, strong) NSLayoutYAxisAnchor *lastBaselineAnchor;
		    Declare Function getLastBaselineAnchor Lib "Foundation" Selector "lastBaselineAnchor" (obj As ptr) As Ptr
		    
		    return NSLayoutYAxisAnchor.Create(getLastBaselineAnchor(view.Handle))
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function LeftAnchor(extends view as MobileScreen) As NSLayoutXAxisAnchor
		  Return LeftAnchor(view.Handle)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function LeftAnchor(extends view as MobileUIControl) As NSLayoutXAxisAnchor
		  Return LeftAnchor(view.handle)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function LeftAnchor(view as ptr) As NSLayoutXAxisAnchor
		  #If TargetiOS
		    // @property(nonatomic, readonly, strong) NSLayoutXAxisAnchor *leftAnchor;
		    Declare Function getLeftAnchor Lib "Foundation" Selector "leftAnchor" (obj As ptr) As Ptr
		    
		    Dim p As ptr = getLeftAnchor(view)
		    If p = Nil Then
		      Return Nil
		    End If
		    
		    Return NSLayoutXAxisAnchor.create(p)
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function RightAnchor(extends view as MobileScreen) As NSLayoutXAxisAnchor
		  Return RightAnchor(view.Handle)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function RightAnchor(extends view as MobileUIControl) As NSLayoutXAxisAnchor
		  Return RightAnchor(view.handle)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function RightAnchor(view as ptr) As NSLayoutXAxisAnchor
		  #If TargetiOS
		    // @property(nonatomic, readonly, strong) NSLayoutXAxisAnchor *rightAnchor;
		    Declare Function getrightAnchor Lib "Foundation" Selector "rightAnchor" (obj As ptr) As Ptr
		    
		    Dim p As ptr = getrightAnchor(view)
		    If p = Nil Then
		      Return Nil
		    End If
		    
		    Return NSLayoutXAxisAnchor.create(p)
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function SafeAreaLayoutGuide(extends view as MobileScreen) As UILayoutGuide
		  Return SafeAreaLayoutGuide(view.Handle)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function SafeAreaLayoutGuide(extends view as MobileUIControl) As UILayoutGuide
		  Return SafeAreaLayoutGuide(view.Handle)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function SafeAreaLayoutGuide(view as ptr) As UILayoutGuide
		  #If TargetiOS
		    // @property(nonatomic, readonly, strong) UILayoutGuide *safeAreaLayoutGuide;
		    Declare Function getSafeAreaLayoutGuide Lib "Foundation" Selector "safeAreaLayoutGuide" (obj As ptr) As Ptr
		    
		    Return UILayoutGuide.Create(getSafeAreaLayoutGuide(view))
		  #EndIf
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function TopAnchor(extends view as MobileScreen) As NSLayoutYAxisAnchor
		  #If TargetiOS
		    // @property(nonatomic, readonly, strong) NSLayoutYAxisAnchor *topAnchor;
		    Declare Function getTopAnchor Lib "Foundation" Selector "topAnchor" (obj As ptr) As Ptr
		    
		    return NSLayoutYAxisAnchor.Create(getTopAnchor(view.Handle))
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function TopAnchor(extends view as MobileUIControl) As NSLayoutYAxisAnchor
		  #If TargetiOS
		    // @property(nonatomic, readonly, strong) NSLayoutYAxisAnchor *topAnchor;
		    Declare Function getTopAnchor Lib "Foundation" Selector "topAnchor" (obj As ptr) As Ptr
		    
		    return NSLayoutYAxisAnchor.Create(getTopAnchor(view.Handle))
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function TrailingAnchor(extends view as MobileScreen) As NSLayoutXAxisAnchor
		  #If TargetiOS
		    // @property(nonatomic, readonly, strong) NSLayoutXAxisAnchor *trailingAnchor;
		    Declare Function getTrailingAnchor Lib "Foundation" Selector "trailingAnchor" (obj As ptr) As Ptr
		    
		    return NSLayoutXAxisAnchor.Create(getTrailingAnchor(view.Handle))
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function TrailingAnchor(extends view as MobileUIControl) As NSLayoutXAxisAnchor
		  #If TargetiOS
		    // @property(nonatomic, readonly, strong) NSLayoutXAxisAnchor *trailingAnchor;
		    Declare Function getTrailingAnchor Lib "Foundation" Selector "trailingAnchor" (obj As ptr) As Ptr
		    
		    return NSLayoutXAxisAnchor.Create(getTrailingAnchor(view.Handle))
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function WidthAnchor(extends view as MobileScreen) As NSLayoutDimension
		  #If TargetiOS
		    // @property(nonatomic, readonly, strong) NSLayoutDimension *widthAnchor;
		    Declare Function getWidthAnchor Lib "Foundation" Selector "widthAnchor" (obj As ptr) As Ptr
		    
		    Return NSLayoutDimension.Create(getWidthAnchor(view.Handle))
		  #EndIf
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function WidthAnchor(extends view as MobileUIControl) As NSLayoutDimension
		  #If TargetiOS
		    // @property(nonatomic, readonly, strong) NSLayoutDimension *widthAnchor;
		    Declare Function getWidthAnchor Lib "Foundation" Selector "widthAnchor" (obj As ptr) As Ptr
		    
		    Return NSLayoutDimension.Create(getWidthAnchor(view.Handle))
		  #EndIf
		End Function
	#tag EndMethod


	#tag Structure, Name = CGRect, Flags = &h1
		X as CGFloat
		  Y as CGFloat
		  Width as CGFloat
		Height as CGFloat
	#tag EndStructure


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
