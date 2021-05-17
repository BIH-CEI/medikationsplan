Alias: $s-bmp-zwischenueberschrift = https://www.charite.de/fhir/medikationsplan/CodeSystem/kbv/s-bmp-zwischenueberschrift

Profile: MedicationStatementListMPPP
Parent: List
Id: mp-list
Title: "MedicationStatement List MP++"
* ^url = "https://www.charite.de./fhir/medikationsplan/StructureDefinition/List"
* ^version = "0.1.0"
* ^status = #draft
* ^publisher = "Charité"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.bihealth.org/en/research/core-facilities/interoperability/"
* id MS
* meta MS
* meta.profile MS
* language MS
* identifier 0..0
* status MS
* status = #current (exactly)
* mode MS
* mode = #snapshot (exactly)
* title ^short = "Zwischenüberschrift Titel (@c)"


ValueSet: kbv-s-bmp-zwischenueberschrift-vs
Id: mp-kbv-s-bmp-zwischenueberschrift-vs
Description: "Die Schlüsseltabelle enthält eine Liste kodierter Zwischenüberschriften, die im Rahmen der Spezifikation zum bundeseinheitlichen Medikationsplan nach § 31a SGB V zu verwenden sind (vgl. Tabelle 6 in Anlage 3 Vereinbarung BMP)."
* ^url = "https://www.charite.de/fhir/medikationsplan/ValueSet/kbv/s-bmp-zwischenueberschrift"
* ^identifier.system = "urn:ietf:rfc:3986"
* ^identifier.value = "1.2.276.0.76.3.1.1.5.2.42"
* ^version = "0.1.0"
* ^status = #draft
* ^date = "2021-05-13"
* ^publisher = "Charité"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.bihealth.org/en/research/core-facilities/interoperability/"
* include codes from system $s-bmp-zwischenueberschrift

CodeSystem: kbv-s-bmp-zwischenueberschrift-cs
Id: mp-kbv-s-bmp-zwischenueberschrift-cs
Description: "Die Schlüsseltabelle enthält eine Liste kodierter Zwischenüberschriften, die im Rahmen der Spezifikation zum bundeseinheitlichen Medikationsplan nach § 31a SGB V zu verwenden sind (vgl. Tabelle 6 in Anlage 3 Vereinbarung BMP)."
* ^url = "https://www.charite.de/fhir/medikationsplan/CodeSystem/kbv/s-bmp-zwischenueberschrift"
* ^identifier.system = "urn:ietf:rfc:3986"
* ^identifier.value = "1.2.276.0.76.3.1.1.5.2.42"
* ^version = "1.01"
* ^status = #draft
* ^date = "2017-08-08"
* ^publisher = "Charité"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.bihealth.org/en/research/core-facilities/interoperability/"
* ^valueSet = "https://www.charite.de/fhir/medikationsplan/ValueSet/kbv/s-bmp-zwischenueberschrift"
* ^content = #complete
* #411 "Bedarfsmedikation"
* #412 "Dauermedikation"
* #413 "Intramuskuläre Anwendung"
* #414 "Besondere Anwendung"
* #415 "Intravenöse Anwendung"
* #416 "Anwendung unter die Haut"
* #417 "Fertigspritze"
* #418 "Selbstmedikation"
* #419 "Allergiehinweise"
* #421 "Wichtige Hinweise"
* #422 "Wichtige Angaben"
* #423 "zu besonderen Zeiten anzuwendende Medikamente"
* #424 "zeitlich befristet anzuwendende Medikamente"