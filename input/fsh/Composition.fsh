Profile: CompositionMPPP
Parent: Composition
Id: mp-composition
Title: "Composition MP++"
* ^url = "https://www.charite.de./fhir/medikationsplan/StructureDefinition/composition"
* ^version = "0.1.0"
* ^status = #draft
* ^publisher = "Charité"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.bihealth.org/en/research/core-facilities/interoperability/"
* id MS
* meta MS
* meta.profile MS
* language MS
* identifier 1..1 MS
* identifier.system 1..1 MS
* identifier.value 1..1 MS
* status MS
* status = #final (exactly)
* type MS
* type.coding MS
* type.coding.system = "http://loinc.org"
* type.coding.code = #77603-9
* type.coding.display MS
* subject MS
* subject.reference 1..1 MS
* encounter 0..0
* date MS
* 