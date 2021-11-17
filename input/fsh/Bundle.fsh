Profile: BundleMP4P
Parent: Bundle
Id: mp4p-bundle
Title: "Bundle MP4+"
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
* identifier MS 
* identifier.system MS
* identifier.value MS
* type MS
* type = #document
* total 0..0
* entry MS
* entry ^slicing.discriminator.type = #type
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #open
* entry contains 
    composition 1..1 MS
* entry[composition].fullUrl MS
* entry[composition].resource only https://www.charite.de/fhir/medikationsplan/StructureDefinition/Composition
* entry[composition].search 0..0
* entry[composition].request 0..0
* entry[composition].response 0..0
