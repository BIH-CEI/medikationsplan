Profile: PractitionerMP4P
Parent: Practitioner
Id: mp4p-practitioner
Title: "Practitioner MP4+"
Description: "Daten zur Identifikation des Erstellers bzw. der Erstellerin des Medikationsplans."
* ^url = "https://www.charite.de/fhir/medikationsplan/StructureDefinition/Practitioner"
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
* identifier[lanr] ^patternIdentifier.type = $v2-0203#LANR
* name MS
* name only http://fhir.de/StructureDefinition/humanname-de-basis
* name.text 1..1 MS

Mapping: UKF-Practitioner
Id: UKF
Title: "UKF Mapping"
Source: PractitionerMP4P
* identifier[versichertenId_GKV].value -> "P@egk"
* name[name].family -> "P@f"
* name[name].family.extension[namenszusatz] -> "P@z"
* name[name].family.extension[vorsatzwort] -> "P@v"
* name[name].given -> "P@g"
* name[name].prefix -> "P@t"
* gender -> "P@s"
* birthDate -> "P@b"

Instance: ExamplePractitioner
InstanceOf: mp4p-practitioner
Usage: #example
* birthDate = "1841-09-08"
* identifier.use = #official
* identifier.system = "https://fhir.kbv.de/NamingSystem/KBV_NS_Base_ANR"
* identifier.value = "1656304456"
* identifier.type = $v2-0203#LANR
* meta.profile = "https://www.charite.de/fhir/medikationsplan/StructureDefinition/Practitioner"
* address.postalCode = "00035"
* address.city = "Dumka"
* address.line = "Prager Str. 9"
* address.text = "Prager Str. 9, 00035 Dumka"
* telecom[0].value = "01234-12345"
* telecom[=].system = #phone
* telecom[+].system = #email
* telecom[=].value = "a.dvorak@mpraxis-rusalka.de"
* name.text = "Dr. Antonín Leopold Dvořák"