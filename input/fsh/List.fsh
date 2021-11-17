Profile: MedicationStatementListMP4P
Parent: List
Id: mp4p-list
Title: "MedicationStatement List MP4+"
* ^url = "https://www.charite.de/fhir/medikationsplan/StructureDefinition/List"
* ^version = "0.1.0"
* ^status = #draft
* ^publisher = "Charité"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.bihealth.org/en/research/core-facilities/interoperability/"
* id MS
* meta MS
* meta.profile MS
* language MS
* identifier 0..0
* status MS
* status = #current (exactly)
* mode MS
* mode = #snapshot (exactly)
* title ^short = "Zwischenüberschrift Titel (@c)"
* code from https://www.charite.de/fhir/medikationsplan/ValueSet/kbv/s-bmp-zwischenueberschrift (required)
* code MS
* code.coding MS
* code.coding.system MS
* code.coding.code MS
* code.coding.display MS
* code.text MS
* subject 0..0
* encounter 0..0
* date 0..0
* source 0..0
* orderedBy 0..0
* note 0..0
* entry MS
* entry.flag 0..0
* entry.deleted 0..0
* entry.date 0..0
* entry.item MS
* entry.item only Reference(https://www.charite.de/fhir/medikationsplan/StructureDefinition/MedicationStatement)
* entry.item.reference 1..1 MS
* emptyReason 0..0
