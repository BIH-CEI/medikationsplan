Profile: ListMP4P
Parent: List
Id: mp4p-list
Title: "MedicationStatement List MP4+"
* ^url = "https://www.charite.de/fhir/medikationsplan/StructureDefinition/List"
* ^version = "0.1.0"
* ^status = #draft
* ^publisher = "Charité"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.bihealth.org/en/research/core-facilities/interoperability/"
// * obeys lst-3 and lst-4
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
* code 1.. MS
* code.coding 1.. MS
* code.coding.system 1.. MS
* code.coding.code 1.. MS
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

Mapping: UKF-List
Id: UKF
Title: "UKF Mapping"
Source: ListMP4P

Instance: ExampleList
InstanceOf: ListMP4P
Usage: #example
* id = "121a7a64-7a80-4ff4-b7d0-1854293491cf"
* meta.profile = "https://www.charite.de/fhir/medikationsplan/StructureDefinition/List"
* status = #current
* mode = #snapshot
* code = $s-bmp-zwischenueberschrift#412 "Dauermedikation"
