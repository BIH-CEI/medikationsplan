Profile: KreatininMP4P
Parent: Observation
Id: mp4p-kreatin
Title: "Kreatininwert MP4+"
Description: "Kreatininwert des Patienten in mg/dl."
* ^url = "https://www.charite.de/fhir/medikationsplan/StructureDefinition/Kreatininwert"
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
* code.coding ^slicing.discriminator[0].type = #pattern
* code.coding ^slicing.discriminator[0].path = "$this"
* code.coding ^slicing.rules = #open
* code.coding contains
    loinc 1..*
* code.coding[loinc] = $loinc#2160-0
* code.coding[loinc].system 1..
* code.coding[loinc].code 1..
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
* valueQuantity.code = #mg/dl (exactly)
* dataAbsentReason 0..0
* bodySite 0..0