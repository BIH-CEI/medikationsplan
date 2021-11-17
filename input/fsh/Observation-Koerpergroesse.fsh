Profile: KoerpergroesseMP4P
Parent: http://fhir.de/StructureDefinition/observation-de-vitalsign-koerpergroesse
Id: mp4p-koerpergroesse
Title: "Körpergröße MP4+"
Description: "Körpergröße des Patienten in cm."
* ^url = "https://www.charite.de/fhir/medikationsplan/StructureDefinition/Koerpergroesse"
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
* code.coding[loinc] = $loinc#8302-2
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
* valueQuantity.code = #cm (exactly)
* dataAbsentReason 0..0
* bodySite 0..0
* specimen 0..0