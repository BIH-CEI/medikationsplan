Logical: LM_Medikation
Parent: Element
Id: lm-medikation
Title: "Medikation"
Description: "Medikation"
* ^url = "https://www.charite.de/fhir/medikationsplan/StructureDefinition/medikation"
* Medikation 0..* BackboneElement "Medikation"
  * Code 0..1 CodeableConcept "Code"
* Ingredient 0..* Reference(LM_Substance) "Ingredient"

Logical: LM_Substance
Parent: Element
Id: lm-substance
Title: "Substance"
Description: "Substance"
* ^url = "https://www.charite.de/fhir/medikationsplan/StructureDefinition/substance"
* Substance 0..* BackboneElement "Substance"
  * Code 0..1 CodeableConcept "Code"