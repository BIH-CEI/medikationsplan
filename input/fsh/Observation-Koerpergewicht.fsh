Profile: KoerpergewichtMP4P
Parent: http://fhir.de/StructureDefinition/observation-de-vitalsign-koerpergewicht
Id: mp4p-koerpergewicht
Title: "Körpergewicht MP4+"
Description: "Körpergewicht des Patienten in kg."
* ^url = "https://www.charite.de/fhir/medikationsplan/StructureDefinition/Koerpergewicht"
* ^version = "0.1.0"
* ^status = #draft
* ^experimental = false
* ^date = "2021-11-16"
* ^publisher = "Charité"
* ^contact[0].telecom[0].system = #url
* ^contact[0].telecom[0].value = "https://www.bihealth.org/en/research/core-facilities/interoperability/"
* id MS
* meta MS
* meta.profile MS
* language MS 
* status = #final (exactly)
* code MS
* code.coding MS 
* code.coding[loinc] MS
* code.coding[loinc] = $loinc#29463-7
* code.coding[loinc].system MS
* code.coding[loinc].code MS
* code.coding[loinc].display MS
* subject 1..1 MS
* subject only Reference(https://www.charite.de/fhir/medikationsplan/StructureDefinition/Patient)
* effective[x] 1..1 MS
* effective[x] only dateTime
* effectiveDateTime MS
* effectiveDateTime.extension contains http://hl7.org/fhir/StructureDefinition/data-absent-reason named dataAbsentReason 0..1 MS
* value[x] 1..1 MS
* value[x] only Quantity
* value[x] ^slicing.discriminator.type = #type
* value[x] ^slicing.discriminator.path = "$this"
* value[x] ^slicing.rules = #open
* valueQuantity only Quantity
* valueQuantity 1..1 MS
* valueQuantity.value 1.. MS
* valueQuantity.unit 1.. MS
* valueQuantity.system 1.. MS
* valueQuantity.system = "http://unitsofmeasure.org" (exactly)
* valueQuantity.code 1.. MS
* valueQuantity.code = #kg (exactly)
* dataAbsentReason 0..0
* bodySite 0..0
* specimen 0..0

Mapping: UKF-Koerpergewicht
Id: UKF
Title: "UKF Mapping"
Source: KoerpergewichtMP4P
* valueQuantity.value -> "O@w"

Instance: ExampleKoerpergewicht
InstanceOf: mp4p-koerpergewicht
Usage: #example
//* id = "2f52e5c1-12c2-4bec-9dd6-66b084afad40"
* meta.profile = "https://www.charite.de/fhir/medikationsplan/StructureDefinition/Koerpergewicht"
* status = #final
* category = $observation-category#vital-signs
* code = $loinc#29463-7
* subject = Reference(ExamplePatient)
* effectiveDateTime = "2021-11-25"
* valueQuantity.value = 68
* valueQuantity.unit = "Kilogramm"
* valueQuantity.system = $ucum
* valueQuantity.code = #kg