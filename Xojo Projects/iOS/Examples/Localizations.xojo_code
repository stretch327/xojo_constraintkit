#tag Module
Protected Module Localizations
	#tag Constant, Name = kFirstName, Type = String, Dynamic = True, Default = \"First Name", Scope = Public
		#Tag Instance, Platform = Any, Language = en, Definition  = \"First Name"
		#Tag Instance, Platform = Any, Language = fr, Definition  = \"Pr\xC3\xA9nom"
		#Tag Instance, Platform = Any, Language = es, Definition  = \"Nombre de pila"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Vorname"
	#tag EndConstant

	#tag Constant, Name = kLastName, Type = String, Dynamic = True, Default = \"Last Name", Scope = Public
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Last Name"
		#Tag Instance, Platform = Any, Language = fr, Definition  = \"Nom de famille"
		#Tag Instance, Platform = Any, Language = es, Definition  = \"Apellido"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Nachname"
	#tag EndConstant

	#tag Constant, Name = kMiddleInitial, Type = String, Dynamic = True, Default = \"Middle Initial", Scope = Public
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Middle Initial"
		#Tag Instance, Platform = Any, Language = fr, Definition  = \"Initiale du milieu"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Mittlere Initiale"
		#Tag Instance, Platform = Any, Language = es, Definition  = \"Inicial media"
	#tag EndConstant


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
