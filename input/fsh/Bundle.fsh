Profile: BundleMP4P
Parent: Bundle
Id: mp4p-bundle
Title: "Bundle MP4+"
Description: "Das Bundle bündelt alle Komponenten des Medikationsplans als Dokument."
* ^url = "https://www.charite.de/fhir/medikationsplan/StructureDefinition/Bundle"
* ^version = "0.1.0"
* ^status = #draft
* ^publisher = "Charité"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.bihealth.org/en/research/core-facilities/interoperability/"
* id MS
* meta MS
* meta.profile MS
* language MS
* identifier 1.. MS 
* identifier.system 1.. MS
* identifier.value 1.. MS
* type MS
* type = #document
* timestamp 1.. MS
* total 0..0
* entry MS
* entry ^slicing.discriminator.type = #type
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #open
* entry contains 
    composition 1..1 MS
* entry[composition].fullUrl MS
* entry[composition].resource only http://hl7.org/fhir/StructureDefinition/Composition
* entry[composition].search 0..0
* entry[composition].request 0..0
* entry[composition].response 0..0

Mapping: UKF-Bundle
Id: UKF
Title: "UKF Mapping"
Source: BundleMP4P
* -> "MP"

Instance: ExampleBundle
InstanceOf: mp4p-bundle
Usage: #example
//* id = "4b226738-6988-4b95-b3eb-bde3baf310f4"
* meta.profile = "https://www.charite.de/fhir/medikationsplan/StructureDefinition/Bundle"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:f1addd63-aaff-4287-aa8e-e5bdc075043d"
* type = #document
* timestamp = "2021-11-23T13:28:17.239+01:00"
* entry[0].fullUrl = "Composition/ExampleComposition"
* entry[=].resource = ExampleComposition
* entry[+].resource = ExampleList
* entry[=].fullUrl = "List/ExampleList"
* entry[+].resource = ExamplePatient
* entry[=].fullUrl = "Patient/ExamplePatient"
* entry[+].resource = ExamplePractitioner
* entry[=].fullUrl = "Practitioner/ExamplePractitioner"