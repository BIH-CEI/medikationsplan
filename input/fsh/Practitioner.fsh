Profile: PractitionerMPPP
Parent: Practitioner
Id: mp-practitioner
Title: "Practitioner MP++"
* ^url = "https://www.charite.de/fhir/medikationsplan/StructureDefinition/practitioner"
* ^version = "0.1.0"
* ^status = #draft
* ^publisher = "Charité"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.bihealth.org/en/research/core-facilities/interoperability/"
* id MS
* meta MS
* meta.profile MS
* identifier MS
* identifier ^slicing.discriminator[0].type = #pattern
* identifier ^slicing.discriminator[0].path = "$this"
* identifier ^slicing.rules = #open
* identifier contains 
    lanr 1..1
* identifier[lanr] only http://fhir.de/StructureDefinition/identifier-lanr
* name MS
* name only http://fhir.de/StructureDefinition/humanname-de-basis
* name.text 1..1 MS