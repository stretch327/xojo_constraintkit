#tag Module
Protected Module SOSConstraintKit
	#tag CompatibilityFlags = ( TargetIOS and ( Target64Bit ) )
	#tag Method, Flags = &h0, CompatibilityFlags = (TargetDesktop and (Target64Bit))
		Function BottomAnchor(extends view as DesktopContainer) As SOSLayoutYAxisAnchor
		  // The bottom anchor of the DesktopUIControl
		  
		  #If targetMacOS or targetIOS
		    // @property(nonatomic, readonly, strong) NSLayoutYAxisAnchor *bottomAnchor
		    Declare Function getBottomAnchor Lib "Foundation" Selector "bottomAnchor" (obj As ptr) As Ptr
		    
		    Return SOSLayoutYAxisAnchor.Create(getBottomAnchor(view.Handle))
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, CompatibilityFlags = (TargetDesktop and (Target64Bit))
		Function BottomAnchor(extends view as DesktopUIControl) As SOSLayoutYAxisAnchor
		  // The bottom anchor of the DesktopUIControl
		  
		  #If targetMacOS or targetIOS
		    // @property(nonatomic, readonly, strong) NSLayoutYAxisAnchor *bottomAnchor
		    Declare Function getBottomAnchor Lib "Foundation" Selector "bottomAnchor" (obj As ptr) As Ptr
		    
		    Return SOSLayoutYAxisAnchor.Create(getBottomAnchor(view.Handle))
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, CompatibilityFlags = (TargetDesktop and (Target64Bit))
		Function BottomAnchor(extends view as DesktopWindow) As SOSLayoutYAxisAnchor
		  // The bottom anchor of the DesktopWindow
		  
		  #If targetMacOS or targetIOS
		    // @property(nonatomic, readonly, strong) NSLayoutYAxisAnchor *bottomAnchor
		    Declare Function getBottomAnchor Lib "Foundation" Selector "bottomAnchor" (obj As ptr) As Ptr
		    
		    return SOSLayoutYAxisAnchor.Create(getBottomAnchor(WindowToView(view)))
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function BottomAnchor(extends view as MobileScreen) As SOSLayoutYAxisAnchor
		  // The bottom anchor of the MobileScreen
		  
		  #If TargetiOS
		    // @property(nonatomic, readonly, strong) NSLayoutYAxisAnchor *bottomAnchor
		    Declare Function getBottomAnchor Lib "Foundation" Selector "bottomAnchor" (obj As ptr) As Ptr
		    
		    return SOSLayoutYAxisAnchor.Create(getBottomAnchor(view.Handle))
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function BottomAnchor(extends view as MobileUIControl) As SOSLayoutYAxisAnchor
		  // The bottom anchor of the MobileUIControl
		  
		  #If TargetiOS
		    // @property(nonatomic, readonly, strong) NSLayoutYAxisAnchor *bottomAnchor
		    Declare Function getBottomAnchor Lib "Foundation" Selector "bottomAnchor" (obj As ptr) As Ptr
		    
		    Return SOSLayoutYAxisAnchor.Create(getBottomAnchor(view.Handle))
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, CompatibilityFlags = (TargetDesktop and (Target64Bit))
		Function CenterXAnchor(extends view as DesktopContainer) As SOSLayoutXAxisAnchor
		  // The Center X anchor of the DesktopUIControl
		  
		  #If targetMacOS or targetIOS
		    // @property(nonatomic, readonly, strong) NSLayoutXAxisAnchor *centerXAnchor;
		    Declare Function getCenterXAnchor Lib "Foundation" Selector "centerXAnchor" (obj As ptr) As Ptr
		    
		    return SOSLayoutXAxisAnchor.create(getCenterXAnchor(view.Handle))
		  #endif
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, CompatibilityFlags = (TargetDesktop and (Target64Bit))
		Function CenterXAnchor(extends view as DesktopUIControl) As SOSLayoutXAxisAnchor
		  // The Center X anchor of the DesktopUIControl
		  
		  #If targetMacOS or targetIOS
		    // @property(nonatomic, readonly, strong) NSLayoutXAxisAnchor *centerXAnchor;
		    Declare Function getCenterXAnchor Lib "Foundation" Selector "centerXAnchor" (obj As ptr) As Ptr
		    
		    return SOSLayoutXAxisAnchor.create(getCenterXAnchor(view.Handle))
		  #endif
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, CompatibilityFlags = (TargetDesktop and (Target64Bit))
		Function CenterXAnchor(extends view as DesktopWindow) As SOSLayoutXAxisAnchor
		  // The Center X anchor of the DesktopWindow
		  
		  #If targetMacOS or targetIOS
		    // @property(nonatomic, readonly, strong) NSLayoutXAxisAnchor *centerXAnchor;
		    Declare Function getCenterXAnchor Lib "Foundation" Selector "centerXAnchor" (obj As ptr) As Ptr
		    
		    return SOSLayoutXAxisAnchor.create(getCenterXAnchor(WindowToView(view)))
		  #endif
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function CenterXAnchor(extends view as MobileScreen) As SOSLayoutXAxisAnchor
		  // The Center X anchor of the MobileScreen
		  
		  #If TargetiOS
		    // @property(nonatomic, readonly, strong) NSLayoutXAxisAnchor *centerXAnchor;
		    Declare Function getCenterXAnchor Lib "Foundation" Selector "centerXAnchor" (obj As ptr) As Ptr
		    
		    return SOSLayoutXAxisAnchor.create(getCenterXAnchor(view.Handle))
		  #endif
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function CenterXAnchor(extends view as MobileUIControl) As SOSLayoutXAxisAnchor
		  // The Center X anchor of the MobileUIControl
		  
		  #If TargetiOS
		    // @property(nonatomic, readonly, strong) NSLayoutXAxisAnchor *centerXAnchor;
		    Declare Function getCenterXAnchor Lib "Foundation" Selector "centerXAnchor" (obj As ptr) As Ptr
		    
		    return SOSLayoutXAxisAnchor.create(getCenterXAnchor(view.Handle))
		  #endif
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, CompatibilityFlags = (TargetDesktop and (Target64Bit))
		Function CenterYAnchor(extends view as DesktopContainer) As SOSLayoutYAxisAnchor
		  // The Center Y anchor of the DesktopUIControl
		  
		  #If targetMacOS or targetIOS
		    // @property(nonatomic, readonly, strong) NSLayoutYAxisAnchor *centerYAnchor;
		    Declare Function getCenterYAnchor Lib "Foundation" selector "centerYAnchor" (obj as ptr) as Ptr
		    
		    return SOSLayoutYAxisAnchor.Create(getCenterYAnchor(view.Handle))
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, CompatibilityFlags = (TargetDesktop and (Target64Bit))
		Function CenterYAnchor(extends view as DesktopUIControl) As SOSLayoutYAxisAnchor
		  // The Center Y anchor of the DesktopUIControl
		  
		  #If targetMacOS or targetIOS
		    // @property(nonatomic, readonly, strong) NSLayoutYAxisAnchor *centerYAnchor;
		    Declare Function getCenterYAnchor Lib "Foundation" selector "centerYAnchor" (obj as ptr) as Ptr
		    
		    return SOSLayoutYAxisAnchor.Create(getCenterYAnchor(view.Handle))
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, CompatibilityFlags = (TargetDesktop and (Target64Bit))
		Function CenterYAnchor(extends view as DesktopWindow) As SOSLayoutYAxisAnchor
		  // The Center Y anchor of the DesktopWindow
		  
		  #If targetMacOS or targetIOS
		    // @property(nonatomic, readonly, strong) NSLayoutYAxisAnchor *centerYAnchor;
		    Declare Function getCenterYAnchor Lib "Foundation" selector "centerYAnchor" (obj as ptr) as Ptr
		    
		    return SOSLayoutYAxisAnchor.Create(getCenterYAnchor(WindowToView(view)))
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function CenterYAnchor(extends view as MobileScreen) As SOSLayoutYAxisAnchor
		  // The Center Y anchor of the MobileScreen
		  
		  #If TargetiOS
		    // @property(nonatomic, readonly, strong) NSLayoutYAxisAnchor *centerYAnchor;
		    Declare Function getCenterYAnchor Lib "Foundation" selector "centerYAnchor" (obj as ptr) as Ptr
		    
		    return SOSLayoutYAxisAnchor.Create(getCenterYAnchor(view.Handle))
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function CenterYAnchor(extends view as MobileUIControl) As SOSLayoutYAxisAnchor
		  // The Center Y anchor of the MobileUIControl
		  
		  #If TargetiOS
		    // @property(nonatomic, readonly, strong) NSLayoutYAxisAnchor *centerYAnchor;
		    Declare Function getCenterYAnchor Lib "Foundation" selector "centerYAnchor" (obj as ptr) as Ptr
		    
		    return SOSLayoutYAxisAnchor.Create(getCenterYAnchor(view.Handle))
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, CompatibilityFlags = (TargetDesktop and (Target64Bit))
		Function FirstBaselineAnchor(extends view as DesktopUIControl) As SOSLayoutYAxisAnchor
		  // The First Baseline anchor of the DesktopUIControl
		  
		  #If targetMacOS or targetIOS
		    // @property(nonatomic, readonly, strong) NSLayoutYAxisAnchor *firstBaselineAnchor;
		    Declare Function getFirstBaselineAnchor Lib "Foundation" Selector "firstBaselineAnchor" (obj As ptr) As Ptr
		    
		    return SOSLayoutYAxisAnchor.Create(getFirstBaselineAnchor(view.Handle))
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function FirstBaselineAnchor(extends view as MobileUIControl) As SOSLayoutYAxisAnchor
		  // The First Baseline anchor of the MobileUIControl
		  
		  #If TargetiOS
		    // @property(nonatomic, readonly, strong) NSLayoutYAxisAnchor *firstBaselineAnchor;
		    Declare Function getFirstBaselineAnchor Lib "Foundation" Selector "firstBaselineAnchor" (obj As ptr) As Ptr
		    
		    return SOSLayoutYAxisAnchor.Create(getFirstBaselineAnchor(view.Handle))
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, CompatibilityFlags = (TargetDesktop and (Target64Bit))
		Function HeightAnchor(extends view as DesktopContainer) As SOSLayoutDimension
		  // The Height anchor of the DesktopUIControl
		  
		  #If targetMacOS or targetIOS
		    // @property(nonatomic, readonly, strong) NSLayoutDimension *heightAnchor;
		    Declare Function getHeightAnchor Lib "Foundation" Selector "heightAnchor" (obj As ptr) As Ptr
		    
		    Return  SOSLayoutDimension.create(getHeightAnchor(view.Handle))
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, CompatibilityFlags = (TargetDesktop and (Target64Bit))
		Function HeightAnchor(extends view as DesktopUIControl) As SOSLayoutDimension
		  // The Height anchor of the DesktopUIControl
		  
		  #If targetMacOS or targetIOS
		    // @property(nonatomic, readonly, strong) NSLayoutDimension *heightAnchor;
		    Declare Function getHeightAnchor Lib "Foundation" Selector "heightAnchor" (obj As ptr) As Ptr
		    
		    Return  SOSLayoutDimension.create(getHeightAnchor(view.Handle))
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, CompatibilityFlags = (TargetDesktop and (Target64Bit))
		Function HeightAnchor(extends view as DesktopWindow) As SOSLayoutDimension
		  // The Height anchor of the DesktopWindow
		  
		  #If targetMacOS or targetIOS
		    // @property(nonatomic, readonly, strong) NSLayoutDimension *heightAnchor;
		    Declare Function getHeightAnchor Lib "Foundation" Selector "heightAnchor" (obj As ptr) As Ptr
		    
		    Return  SOSLayoutDimension.create(getHeightAnchor(WindowToView(view)))
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function HeightAnchor(extends view as MobileScreen) As SOSLayoutDimension
		  // The Height anchor of the MobileScreen
		  
		  #If TargetiOS
		    // @property(nonatomic, readonly, strong) NSLayoutDimension *heightAnchor;
		    Declare Function getHeightAnchor Lib "Foundation" Selector "heightAnchor" (obj As ptr) As Ptr
		    
		    Return  SOSLayoutDimension.create(getHeightAnchor(view.Handle))
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function HeightAnchor(extends view as MobileUIControl) As SOSLayoutDimension
		  // The Height anchor of the MobileUIControl
		  
		  #If TargetiOS
		    // @property(nonatomic, readonly, strong) NSLayoutDimension *heightAnchor;
		    Declare Function getHeightAnchor Lib "Foundation" Selector "heightAnchor" (obj As ptr) As Ptr
		    
		    Return  SOSLayoutDimension.create(getHeightAnchor(view.Handle))
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, CompatibilityFlags = (TargetDesktop and (Target64Bit))
		Function LastBaselineAnchor(extends view as DesktopUIControl) As SOSLayoutYAxisAnchor
		  // The Last Baseline anchor of the DesktopUIControl
		  
		  #If targetMacOS or targetIOS
		    // @property(nonatomic, readonly, strong) NSLayoutYAxisAnchor *lastBaselineAnchor;
		    Declare Function getLastBaselineAnchor Lib "Foundation" Selector "lastBaselineAnchor" (obj As ptr) As Ptr
		    
		    return SOSLayoutYAxisAnchor.Create(getLastBaselineAnchor(view.Handle))
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function LastBaselineAnchor(extends view as MobileUIControl) As SOSLayoutYAxisAnchor
		  // The Last Baseline anchor of the MobileUIControl
		  
		  #If TargetiOS
		    // @property(nonatomic, readonly, strong) NSLayoutYAxisAnchor *lastBaselineAnchor;
		    Declare Function getLastBaselineAnchor Lib "Foundation" Selector "lastBaselineAnchor" (obj As ptr) As Ptr
		    
		    return SOSLayoutYAxisAnchor.Create(getLastBaselineAnchor(view.Handle))
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function LeadingAnchor(extends view as DesktopContainer) As SOSLayoutXAxisAnchor
		  // The Leading anchor of the control
		  
		  #If targetMacOS Or targetIOS
		    // @property(nonatomic, readonly, strong) NSLayoutXAxisAnchor *trailingAnchor;
		    Declare Function getLeadingAnchor Lib "Foundation" Selector "leadingAnchor" (obj As ptr) As Ptr
		    
		    Return SOSLayoutXAxisAnchor.Create(getLeadingAnchor(view.Handle))
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function LeadingAnchor(extends view as DesktopUIControl) As SOSLayoutXAxisAnchor
		  // The Leading anchor of the control
		  
		  #If targetMacOS Or targetIOS
		    // @property(nonatomic, readonly, strong) NSLayoutXAxisAnchor *trailingAnchor;
		    Declare Function getLeadingAnchor Lib "Foundation" Selector "leadingAnchor" (obj As ptr) As Ptr
		    
		    Return SOSLayoutXAxisAnchor.Create(getLeadingAnchor(view.Handle))
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, CompatibilityFlags = (TargetDesktop and (Target64Bit))
		Function LeadingAnchor(extends view as DesktopWindow) As SOSLayoutXAxisAnchor
		  // The Leading anchor of the DesktopWindow
		  
		  #If targetMacOS Or targetIOS
		    // @property(nonatomic, readonly, strong) NSLayoutXAxisAnchor *trailingAnchor;
		    Declare Function getLeadingAnchor Lib "Foundation" Selector "leadingAnchor" (obj As ptr) As Ptr
		    
		    Return SOSLayoutXAxisAnchor.Create(getLeadingAnchor(WindowToView(view)))
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function LeadingAnchor(extends view as MobileScreen) As SOSLayoutXAxisAnchor
		  // The Leading anchor of the control
		  
		  #If targetMacOS Or targetIOS
		    // @property(nonatomic, readonly, strong) NSLayoutXAxisAnchor *trailingAnchor;
		    Declare Function getLeadingAnchor Lib "Foundation" Selector "leadingAnchor" (obj As ptr) As Ptr
		    
		    Return SOSLayoutXAxisAnchor.Create(getLeadingAnchor(view.Handle))
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function LeadingAnchor(extends view as MobileUIControl) As SOSLayoutXAxisAnchor
		  // The Leading anchor of the control
		  
		  #If targetMacOS Or targetIOS
		    // @property(nonatomic, readonly, strong) NSLayoutXAxisAnchor *trailingAnchor;
		    Declare Function getLeadingAnchor Lib "Foundation" Selector "leadingAnchor" (obj As ptr) As Ptr
		    
		    Return SOSLayoutXAxisAnchor.Create(getLeadingAnchor(view.Handle))
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, CompatibilityFlags = (TargetDesktop and (Target64Bit))
		Function LeftAnchor(extends view as DesktopContainer) As SOSLayoutXAxisAnchor
		  // The Left anchor of the DesktopUIControl
		  
		  Return LeftAnchor(view.handle)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, CompatibilityFlags = (TargetDesktop and (Target64Bit))
		Function LeftAnchor(extends view as DesktopUIControl) As SOSLayoutXAxisAnchor
		  // The Left anchor of the DesktopUIControl
		  
		  Return LeftAnchor(view.handle)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, CompatibilityFlags = (TargetDesktop and (Target64Bit))
		Function LeftAnchor(extends view as DesktopWindow) As SOSLayoutXAxisAnchor
		  // The Left anchor of the DesktopWindow
		  
		  Return LeftAnchor(WindowToView(view))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function LeftAnchor(extends view as MobileScreen) As SOSLayoutXAxisAnchor
		  // The Left anchor of the MobileScreen
		  
		  Return LeftAnchor(view.Handle)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function LeftAnchor(extends view as MobileUIControl) As SOSLayoutXAxisAnchor
		  // The Left anchor of the MobileUIControl
		  
		  Return LeftAnchor(view.handle)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Attributes( Hidden ) Private Function LeftAnchor(view as ptr) As SOSLayoutXAxisAnchor
		  #If TargetiOS
		    // @property(nonatomic, readonly, strong) NSLayoutXAxisAnchor *leftAnchor;
		    Declare Function getLeftAnchor Lib "Foundation" Selector "leftAnchor" (obj As ptr) As Ptr
		    
		    Dim p As ptr = getLeftAnchor(view)
		    If p = Nil Then
		      Return Nil
		    End If
		    
		    Return SOSLayoutXAxisAnchor.create(p)
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, CompatibilityFlags = (TargetDesktop and (Target64Bit))
		Function RightAnchor(extends view as DesktopContainer) As SOSLayoutXAxisAnchor
		  // The Right anchor of the DesktopUIControl
		  
		  Return RightAnchor(view.handle)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, CompatibilityFlags = (TargetDesktop and (Target64Bit))
		Function RightAnchor(extends view as DesktopUIControl) As SOSLayoutXAxisAnchor
		  // The Right anchor of the DesktopUIControl
		  
		  Return RightAnchor(view.handle)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, CompatibilityFlags = (TargetDesktop and (Target64Bit))
		Function RightAnchor(extends view as DesktopWindow) As SOSLayoutXAxisAnchor
		  // The Right anchor of the DesktopWindow
		  
		  Return RightAnchor(WindowToView(view))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function RightAnchor(extends view as MobileScreen) As SOSLayoutXAxisAnchor
		  // The Right anchor of the MobileScreen
		  
		  Return RightAnchor(view.Handle)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function RightAnchor(extends view as MobileUIControl) As SOSLayoutXAxisAnchor
		  // The Right anchor of the MobileUIControl
		  
		  Return RightAnchor(view.handle)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Attributes( Hidden ) Private Function RightAnchor(view as ptr) As SOSLayoutXAxisAnchor
		  #If TargetiOS
		    // @property(nonatomic, readonly, strong) NSLayoutXAxisAnchor *rightAnchor;
		    Declare Function getrightAnchor Lib "Foundation" Selector "rightAnchor" (obj As ptr) As Ptr
		    
		    Dim p As ptr = getrightAnchor(view)
		    If p = Nil Then
		      Return Nil
		    End If
		    
		    Return SOSLayoutXAxisAnchor.create(p)
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, CompatibilityFlags = (TargetDesktop and (Target64Bit))
		Function SafeAreaLayoutGuide(extends view as DesktopContainer) As SOSLayoutGuide
		  // The Safe Area Layout Guide anchor of the DesktopUIControl
		  
		  Return SafeAreaLayoutGuide(view.Handle)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, CompatibilityFlags = (TargetDesktop and (Target64Bit))
		Function SafeAreaLayoutGuide(extends view as DesktopUIControl) As SOSLayoutGuide
		  // The Safe Area Layout Guide anchor of the DesktopUIControl
		  
		  Return SafeAreaLayoutGuide(view.Handle)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, CompatibilityFlags = (TargetDesktop and (Target64Bit))
		Function SafeAreaLayoutGuide(extends view as DesktopWindow) As SOSLayoutGuide
		  // The Safe Area Layout Guide anchor of the DesktopWindow
		  
		  Return SafeAreaLayoutGuide(WindowToView(view))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function SafeAreaLayoutGuide(extends view as MobileScreen) As SOSLayoutGuide
		  // The Safe Area Layout Guide anchor of the MobileScreen
		  
		  Return SafeAreaLayoutGuide(view.Handle)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function SafeAreaLayoutGuide(extends view as MobileUIControl) As SOSLayoutGuide
		  // The Safe Area Layout Guide anchor of the MobileUIControl
		  
		  Return SafeAreaLayoutGuide(view.Handle)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Attributes( Hidden ) Private Function SafeAreaLayoutGuide(view as ptr) As SOSLayoutGuide
		  #If TargetiOS
		    // @property(nonatomic, readonly, strong) UILayoutGuide *safeAreaLayoutGuide;
		    Declare Function getSafeAreaLayoutGuide Lib "Foundation" Selector "safeAreaLayoutGuide" (obj As ptr) As Ptr
		    
		    Return SOSLayoutGuide.Create(getSafeAreaLayoutGuide(view))
		  #EndIf
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, CompatibilityFlags = (TargetDesktop and (Target64Bit))
		Function TopAnchor(extends view as DesktopContainer) As SOSLayoutYAxisAnchor
		  // The Top anchor of the DesktopUIControl
		  
		  #If targetMacOS or targetIOS
		    // @property(nonatomic, readonly, strong) NSLayoutYAxisAnchor *topAnchor;
		    Declare Function getTopAnchor Lib "Foundation" Selector "topAnchor" (obj As ptr) As Ptr
		    
		    return SOSLayoutYAxisAnchor.Create(getTopAnchor(view.Handle))
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, CompatibilityFlags = (TargetDesktop and (Target64Bit))
		Function TopAnchor(extends view as DesktopUIControl) As SOSLayoutYAxisAnchor
		  // The Top anchor of the DesktopUIControl
		  
		  #If targetMacOS or targetIOS
		    // @property(nonatomic, readonly, strong) NSLayoutYAxisAnchor *topAnchor;
		    Declare Function getTopAnchor Lib "Foundation" Selector "topAnchor" (obj As ptr) As Ptr
		    
		    return SOSLayoutYAxisAnchor.Create(getTopAnchor(view.Handle))
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, CompatibilityFlags = (TargetDesktop and (Target64Bit))
		Function TopAnchor(extends view as DesktopWindow) As SOSLayoutYAxisAnchor
		  // The Top anchor of the DesktopWindow
		  
		  #If targetMacOS Or targetIOS
		    // @property(nonatomic, readonly, strong) NSLayoutYAxisAnchor *topAnchor;
		    Declare Function getTopAnchor Lib "Foundation" Selector "topAnchor" (obj As ptr) As Ptr
		    
		    return SOSLayoutYAxisAnchor.Create(getTopAnchor(WindowToView(view)))
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function TopAnchor(extends view as MobileScreen) As SOSLayoutYAxisAnchor
		  // The Top anchor of the MobileScreen
		  
		  #If TargetiOS
		    // @property(nonatomic, readonly, strong) NSLayoutYAxisAnchor *topAnchor;
		    Declare Function getTopAnchor Lib "Foundation" Selector "topAnchor" (obj As ptr) As Ptr
		    
		    return SOSLayoutYAxisAnchor.Create(getTopAnchor(view.Handle))
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function TopAnchor(extends view as MobileUIControl) As SOSLayoutYAxisAnchor
		  // The Top anchor of the MobileUIControl
		  
		  #If TargetiOS
		    // @property(nonatomic, readonly, strong) NSLayoutYAxisAnchor *topAnchor;
		    Declare Function getTopAnchor Lib "Foundation" Selector "topAnchor" (obj As ptr) As Ptr
		    
		    return SOSLayoutYAxisAnchor.Create(getTopAnchor(view.Handle))
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, CompatibilityFlags = (TargetDesktop and (Target64Bit))
		Function TrailingAnchor(extends view as DesktopContainer) As SOSLayoutXAxisAnchor
		  // The Trailing anchor of the DesktopUIControl
		  
		  #If targetMacOS or targetIOS
		    // @property(nonatomic, readonly, strong) NSLayoutXAxisAnchor *trailingAnchor;
		    Declare Function getTrailingAnchor Lib "Foundation" Selector "trailingAnchor" (obj As ptr) As Ptr
		    
		    return SOSLayoutXAxisAnchor.Create(getTrailingAnchor(view.Handle))
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, CompatibilityFlags = (TargetDesktop and (Target64Bit))
		Function TrailingAnchor(extends view as DesktopUIControl) As SOSLayoutXAxisAnchor
		  // The Trailing anchor of the DesktopUIControl
		  
		  #If targetMacOS or targetIOS
		    // @property(nonatomic, readonly, strong) NSLayoutXAxisAnchor *trailingAnchor;
		    Declare Function getTrailingAnchor Lib "Foundation" Selector "trailingAnchor" (obj As ptr) As Ptr
		    
		    return SOSLayoutXAxisAnchor.Create(getTrailingAnchor(view.Handle))
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, CompatibilityFlags = (TargetDesktop and (Target64Bit))
		Function TrailingAnchor(extends view as DesktopWindow) As SOSLayoutXAxisAnchor
		  // The Trailing anchor of the DesktopWindow
		  
		  #If targetMacOS or targetIOS
		    // @property(nonatomic, readonly, strong) NSLayoutXAxisAnchor *trailingAnchor;
		    Declare Function getTrailingAnchor Lib "Foundation" Selector "trailingAnchor" (obj As ptr) As Ptr
		    
		    return SOSLayoutXAxisAnchor.Create(getTrailingAnchor(WindowToView(view)))
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function TrailingAnchor(extends view as MobileScreen) As SOSLayoutXAxisAnchor
		  // The Trailing anchor of the MobileScreen
		  
		  #If TargetiOS
		    // @property(nonatomic, readonly, strong) NSLayoutXAxisAnchor *trailingAnchor;
		    Declare Function getTrailingAnchor Lib "Foundation" Selector "trailingAnchor" (obj As ptr) As Ptr
		    
		    return SOSLayoutXAxisAnchor.Create(getTrailingAnchor(view.Handle))
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function TrailingAnchor(extends view as MobileUIControl) As SOSLayoutXAxisAnchor
		  // The Trailing anchor of the MobileUIControl
		  
		  #If TargetiOS
		    // @property(nonatomic, readonly, strong) NSLayoutXAxisAnchor *trailingAnchor;
		    Declare Function getTrailingAnchor Lib "Foundation" Selector "trailingAnchor" (obj As ptr) As Ptr
		    
		    return SOSLayoutXAxisAnchor.Create(getTrailingAnchor(view.Handle))
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, CompatibilityFlags = (TargetDesktop and (Target64Bit))
		Function WidthAnchor(extends view as DesktopContainer) As SOSLayoutDimension
		  // The Width anchor of the DesktopUIControl
		  
		  #If targetMacOS or targetIOS
		    // @property(nonatomic, readonly, strong) NSLayoutDimension *widthAnchor;
		    Declare Function getWidthAnchor Lib "Foundation" Selector "widthAnchor" (obj As ptr) As Ptr
		    
		    Return SOSLayoutDimension.Create(getWidthAnchor(view.Handle))
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, CompatibilityFlags = (TargetDesktop and (Target64Bit))
		Function WidthAnchor(extends view as DesktopUIControl) As SOSLayoutDimension
		  // The Width anchor of the DesktopUIControl
		  
		  #If targetMacOS or targetIOS
		    // @property(nonatomic, readonly, strong) NSLayoutDimension *widthAnchor;
		    Declare Function getWidthAnchor Lib "Foundation" Selector "widthAnchor" (obj As ptr) As Ptr
		    
		    Return SOSLayoutDimension.Create(getWidthAnchor(view.Handle))
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, CompatibilityFlags = (TargetDesktop and (Target64Bit))
		Function WidthAnchor(extends view as DesktopWindow) As SOSLayoutDimension
		  // The Width anchor of the DesktopWindow
		  
		  #If targetMacOS or targetIOS
		    // @property(nonatomic, readonly, strong) NSLayoutDimension *widthAnchor;
		    Declare Function getWidthAnchor Lib "Foundation" Selector "widthAnchor" (obj As ptr) As Ptr
		    
		    Return SOSLayoutDimension.Create(getWidthAnchor(WindowToView(view)))
		  #EndIf
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function WidthAnchor(extends view as MobileScreen) As SOSLayoutDimension
		  // The Width anchor of the MobileScreen
		  
		  #If TargetiOS
		    // @property(nonatomic, readonly, strong) NSLayoutDimension *widthAnchor;
		    Declare Function getWidthAnchor Lib "Foundation" Selector "widthAnchor" (obj As ptr) As Ptr
		    
		    Return SOSLayoutDimension.Create(getWidthAnchor(view.Handle))
		  #EndIf
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function WidthAnchor(extends view as MobileUIControl) As SOSLayoutDimension
		  // The Width anchor of the MobileUIControl
		  
		  #If TargetiOS
		    // @property(nonatomic, readonly, strong) NSLayoutDimension *widthAnchor;
		    Declare Function getWidthAnchor Lib "Foundation" Selector "widthAnchor" (obj As ptr) As Ptr
		    
		    Return SOSLayoutDimension.Create(getWidthAnchor(view.Handle))
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21, CompatibilityFlags = (TargetDesktop and (Target64Bit))
		Private Function WindowToView(w as DesktopWindow) As Ptr
		  Dim p As ptr = w.Handle
		  #If TargetMacOS
		    If Not w IsA DesktopContainer Then
		      // @property(strong) __kindof NSView *contentView;
		      Declare Function getContentView Lib "Foundation" Selector "contentView" (obj As ptr) As Ptr
		      p = getContentView(w.Handle)
		    End If
		  #EndIf
		  
		  Return p
		End Function
	#tag EndMethod


	#tag Structure, Name = CGRect, Flags = &h21, Attributes = \"Hidden"
		X as CGFloat
		  Y as CGFloat
		  Width as CGFloat
		Height as CGFloat
	#tag EndStructure

	#tag Structure, Name = CGSize, Flags = &h21, Attributes = \"Hidden"
		width as cgfloat
		height as cgfloat
	#tag EndStructure


	#tag Enum, Name = Axis, Type = Integer, Flags = &h0, Description = 54686520646972656374696F6E616C2061786973
		Horizontal
		Vertical
	#tag EndEnum

	#tag Enum, Name = Priorities, Flags = &h0, Description = 5468652064656661756C7420586F6A6F20616E64204170706C65207072696F7269746965732E
		Required = 1000
		  XojoHighest = 1000
		  XojoHigh = 800
		  XojoMediumHigh = 600
		  XojoMedium = 400
		  XojoLow = 200
		  AppleHigh = 750
		  AppleMedium = 500
		AppleLow = 250
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
	#tag EndViewBehavior
End Module
#tag EndModule
