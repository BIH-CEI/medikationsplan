CodeSystem: KBV_CS_SFHIR_BMP_DOSIEREINHEIT
Id: KBV-CS-SFHIR-BMP-DOSIEREINHEIT
Description: "Die Schlüsseltabelle enthält eine Liste von kodierten Dosiereinheiten, die im Rahmen der Spezifikation zum bundeseinheitlichen Medikationsplan nach § 31a SGB V zu verwenden sind (vgl. Anhang 4 zu Anlage 3 Vereinbarung BMP). Die Spalte \"Code\" wird im Attribut \"V\", die Spalte \"Einheit Ausdruck\" im Attribut \"DN\", die Spalte  \"Bedeutung\" im Attribut \"bedeutung\" und die Spalte \"Einheit durch AM-Datenbanken unterstützt\" im Attribut \"unterstuetzt\" abgebildet."
* ^status = #active
* ^content = #complete
* ^version = "1.01"
* ^url = "https://fhir.kbv.de/CodeSystem/KBV_CS_SFHIR_BMP_DOSIEREINHEIT"
* ^identifier.system = "urn:ietf:rfc:3986"
* ^identifier.value = "urn:oid:1.2.276.0.76.3.1.1.5.2.41"
* ^date = "2019-01-01"
* ^publisher = "Kassenärztliche Bundesvereinigung"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.kbv.de"
* ^copyright = "Kassenärztliche Bundesvereinigung"
* ^caseSensitive = true
* ^count = 33
* ## "Messlöffel"
* ## ^property[0].code = #unterstuetzt
* ## ^property[=].valueBoolean = true
* ## ^property[+].code = #sortierung
* ## ^property[=].valueInteger = 8
* #0 "Messbecher"
* #0 ^property[0].code = #unterstuetzt
* #0 ^property[=].valueBoolean = true
* #0 ^property[+].code = #sortierung
* #0 ^property[=].valueInteger = 9
* #1 "Stück"
* #1 ^property[0].code = #unterstuetzt
* #1 ^property[=].valueBoolean = true
* #1 ^property[+].code = #sortierung
* #1 ^property[=].valueInteger = 1
* #2 "Pkg."
* #2 ^property[0].code = #unterstuetzt
* #2 ^property[=].valueBoolean = false
* #2 ^property[+].code = #sortierung
* #2 ^property[=].valueInteger = 22
* #3 "Flasche"
* #3 ^property[0].code = #unterstuetzt
* #3 ^property[=].valueBoolean = true
* #3 ^property[+].code = #sortierung
* #3 ^property[=].valueInteger = 15
* #4 "Beutel"
* #4 ^property[0].code = #unterstuetzt
* #4 ^property[=].valueBoolean = true
* #4 ^property[+].code = #sortierung
* #4 ^property[=].valueInteger = 16
* #5 "Hub"
* #5 ^property[0].code = #unterstuetzt
* #5 ^property[=].valueBoolean = true
* #5 ^property[+].code = #sortierung
* #5 ^property[=].valueInteger = 4
* #6 "Tropfen"
* #6 ^property[0].code = #unterstuetzt
* #6 ^property[=].valueBoolean = true
* #6 ^property[+].code = #sortierung
* #6 ^property[=].valueInteger = 2
* #7 "Teelöffel"
* #7 ^property[0].code = #unterstuetzt
* #7 ^property[=].valueBoolean = true
* #7 ^property[+].code = #sortierung
* #7 ^property[=].valueInteger = 26
* #8 "Esslöffel"
* #8 ^property[0].code = #unterstuetzt
* #8 ^property[=].valueBoolean = true
* #8 ^property[+].code = #sortierung
* #8 ^property[=].valueInteger = 27
* #9 "E"
* #9 ^property[0].code = #unterstuetzt
* #9 ^property[=].valueBoolean = true
* #9 ^property[+].code = #sortierung
* #9 ^property[=].valueInteger = 13
* #a "Tasse"
* #a ^property[0].code = #unterstuetzt
* #a ^property[=].valueBoolean = true
* #a ^property[+].code = #sortierung
* #a ^property[=].valueInteger = 29
* #b "Applikatorfüllung"
* #b ^property[0].code = #unterstuetzt
* #b ^property[=].valueBoolean = true
* #b ^property[+].code = #sortierung
* #b ^property[=].valueInteger = 11
* #c "Augenbadewanne"
* #c ^property[0].code = #unterstuetzt
* #c ^property[=].valueBoolean = true
* #c ^property[+].code = #sortierung
* #c ^property[=].valueInteger = 33
* #d "Dosierbriefchen"
* #d ^property[0].code = #unterstuetzt
* #d ^property[=].valueBoolean = true
* #d ^property[+].code = #sortierung
* #d ^property[=].valueInteger = 23
* #e "Dosierpipette"
* #e ^property[0].code = #unterstuetzt
* #e ^property[=].valueBoolean = true
* #e ^property[+].code = #sortierung
* #e ^property[=].valueInteger = 24
* #f "Dosierspritze"
* #f ^property[0].code = #unterstuetzt
* #f ^property[=].valueBoolean = true
* #f ^property[+].code = #sortierung
* #f ^property[=].valueInteger = 25
* #g "Einzeldosis"
* #g ^property[0].code = #unterstuetzt
* #g ^property[=].valueBoolean = true
* #g ^property[+].code = #sortierung
* #g ^property[=].valueInteger = 12
* #h "Glas"
* #h ^property[0].code = #unterstuetzt
* #h ^property[=].valueBoolean = true
* #h ^property[+].code = #sortierung
* #h ^property[=].valueInteger = 28
* #i "Likörglas"
* #i ^property[0].code = #unterstuetzt
* #i ^property[=].valueBoolean = true
* #i ^property[+].code = #sortierung
* #i ^property[=].valueInteger = 32
* #j "Messkappe"
* #j ^property[0].code = #unterstuetzt
* #j ^property[=].valueBoolean = true
* #j ^property[+].code = #sortierung
* #j ^property[=].valueInteger = 30
* #k "Messschale"
* #k ^property[0].code = #unterstuetzt
* #k ^property[=].valueBoolean = true
* #k ^property[+].code = #sortierung
* #k ^property[=].valueInteger = 31
* #l "Mio E"
* #l ^property[0].code = #unterstuetzt
* #l ^property[=].valueBoolean = true
* #l ^property[+].code = #sortierung
* #l ^property[=].valueInteger = 17
* #m "Mio IE"
* #m ^property[0].code = #unterstuetzt
* #m ^property[=].valueBoolean = true
* #m ^property[+].code = #sortierung
* #m ^property[=].valueInteger = 18
* #n "Pipettenteilstrich"
* #n ^property[0].code = #unterstuetzt
* #n ^property[=].valueBoolean = true
* #n ^property[+].code = #sortierung
* #n ^property[=].valueInteger = 14
* #o "Sprühstoß"
* #o ^property[0].code = #unterstuetzt
* #o ^property[=].valueBoolean = true
* #o ^property[+].code = #sortierung
* #o ^property[=].valueInteger = 5
* #p "IE"
* #p ^property[0].code = #unterstuetzt
* #p ^property[=].valueBoolean = true
* #p ^property[+].code = #sortierung
* #p ^property[=].valueInteger = 3
* #q "cm"
* #q ^property[0].code = #unterstuetzt
* #q ^property[=].valueBoolean = true
* #q ^property[+].code = #sortierung
* #q ^property[=].valueInteger = 7
* #r "l"
* #r ^property[0].code = #unterstuetzt
* #r ^property[=].valueBoolean = true
* #r ^property[+].code = #sortierung
* #r ^property[=].valueInteger = 20
* #s "ml"
* #s ^property[0].code = #unterstuetzt
* #s ^property[=].valueBoolean = true
* #s ^property[+].code = #sortierung
* #s ^property[=].valueInteger = 6
* #t "g"
* #t ^property[0].code = #unterstuetzt
* #t ^property[=].valueBoolean = true
* #t ^property[+].code = #sortierung
* #t ^property[=].valueInteger = 19
* #u "kg"
* #u ^property[0].code = #unterstuetzt
* #u ^property[=].valueBoolean = false
* #u ^property[+].code = #sortierung
* #u ^property[=].valueInteger = 21
* #v "mg"
* #v ^property[0].code = #unterstuetzt
* #v ^property[=].valueBoolean = false
* #v ^property[+].code = #sortierung
* #v ^property[=].valueInteger = 10