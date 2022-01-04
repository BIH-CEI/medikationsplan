Profile: FreitextMP4P
Parent: Observation
Id: mp4p-freitext
Title: "Freitext MP4+"
Description: "Text ohne Bezug zu einem Medikationseintrag."
* ^url = "https://www.charite.de/fhir/medikationsplan/StructureDefinition/freitext"
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
* code.coding ^slicing.discriminator[0].type = #pattern
* code.coding ^slicing.discriminator[0].path = "$this"
* code.coding ^slicing.rules = #open
* code.coding contains
    loinc 1..* MS 
* code.coding[loinc] MS
* code.coding[loinc] = $loinc#86467-8
* code.coding[loinc].system 1.. MS
* code.coding[loinc].code 1.. MS
* subject 1..1 MS
* subject only Reference(https://www.charite.de/fhir/medikationsplan/StructureDefinition/Patient)
//* effective[x] 1..1 MS
//* effective[x] only dateTime
//* effectiveDateTime MS
//* effectiveDateTime.extension contains http://hl7.org/fhir/StructureDefinition/data-absent-reason named dataAbsentReason 0..1 MS
* value[x] 1..1 MS
* value[x] only string
* value[x] ^slicing.discriminator.type = #type
* value[x] ^slicing.discriminator.path = "$this"
* value[x] ^slicing.rules = #open
* valueString only string
* valueString 1..1 MS
* dataAbsentReason 0..0
* bodySite 0..0
* specimen 0..0

Mapping: UKF-Freitext
Id: UKF
Title: "UKF Mapping"
Source: FreitextMP4P
* valueString -> "O@x"

Instance: ExampleFreitext
InstanceOf: mp4p-freitext
Usage: #example
* meta.profile = "https://www.charite.de/fhir/medikationsplan/StructureDefinition/freitext"
* status = #final
* code = $loinc#86467-8
* subject = Reference(ExamplePatient)
//* effectiveDateTime = "2021-11-25"
* valueString = "Bitte messen Sie Ihren Blutdruck täglich!"