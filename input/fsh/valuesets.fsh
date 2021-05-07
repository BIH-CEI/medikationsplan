Alias: $TimingEvent = http://hl7.org/fhir/v3/TimingEvent

ValueSet: Einnahmezeitpunkte
Id: mp-einnahmezeitpunkte
Description: "ValueSet zur Codierung von Einnahmezeitpunkten"
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^url = "https://www.charite.de/fhir/medikationsplan/ValueSet/einnahmezeitpunkte"
* ^version = "0.1.0"
* ^status = #draft
* ^date = "2021-05-07"
* $TimingEvent#CM "Morgens"
* $TimingEvent#CD "Mittags"
* $TimingEvent#CV "Abends"
* $TimingEvent#HS "zur Nacht"