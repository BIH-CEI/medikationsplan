Profile: StatusStillendMP4P
Parent: Observation
Id: mp4p-stillend
Title: "Status stillend MP4+"
Description: "Information darüber, ob die Patientin aktuell stillend ist."
* ^url = "https://www.charite.de/fhir/medikationsplan/StructureDefinition/StatusStillend"
* ^version = "0.1.0"
* ^status = #draft
* ^experimental = false
* ^date = "2021-04-14"
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
* code.coding[loinc] = $loinc#63895-7
* code.coding[loinc].system 1.. MS
* code.coding[loinc].code 1.. MS
* subject 1..1 MS
* subject only Reference(https://www.charite.de/fhir/medikationsplan/StructureDefinition/Patient)
* effective[x] 1..1 MS
* effective[x] only dateTime
* effectiveDateTime MS
* effectiveDateTime.extension contains http://hl7.org/fhir/StructureDefinition/data-absent-reason named dataAbsentReason 0..1 MS
* value[x] 1.. MS
* value[x] only boolean
* valueBoolean ..1 MS
* dataAbsentReason 0..0
* bodySite 0..0
* specimen 0..0
* device 0..0
* referenceRange 0..0 
* component 0..0 