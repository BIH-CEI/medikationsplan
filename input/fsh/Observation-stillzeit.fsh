Profile: Breastfeeding
Parent: Observation
Id: observation-breastfeeding
Title: "Breastfeeding"
Description: "Breastfeeding"
* ^url = "https://www.charite.de/fhir/medikationsplan/StructureDefinition/observation-breastfeeding"
* ^version = "0.1.0"
* ^status = #draft
* ^experimental = false
* ^date = "2021-04-14"
* ^publisher = "Charité"
* ^contact[0].telecom[0].system = #url
* ^contact[0].telecom[0].value = "https://www.bihealth.org/en/research/core-facilities/interoperability/"
* code.coding ^slicing.discriminator[0].type = #pattern
* code.coding ^slicing.discriminator[0].path = "$this"
* code.coding ^slicing.rules = #open
* code.coding contains
    loinc 1..*
* code.coding[loinc] = $loinc#63895-7
* code.coding[loinc].system 1..
* code.coding[loinc].code 1..
* subject 1..1 MS
* value[x] MS
* value[x] only boolean
* dataAbsentReason MS