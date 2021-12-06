Extension: Freitext
Id: mp4p-extension-freitext
Title: "Extension Freitext MP4+"
Description: "Extension zur Freitext-Angabe der Wirkstoffmenge bzw. Stärke."
* ^url = "https://www.charite.de/fhir/medikationsplan/Extension/freitext"
* ^version = "0.1.0"
* ^experimental = false
* ^publisher = "Charité"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.bihealth.org/en/research/core-facilities/interoperability/"
* ^context.type = #element
* ^context.expression = "Medication.ingredient.strength"
* url = "https://www.charite.de/fhir/medikationsplan/Extension/freitext" (exactly)
* value[x] 1..
* value[x] only string
* value[x] ^slicing.discriminator.type = #type
* value[x] ^slicing.discriminator.path = "$this"
* value[x] ^slicing.rules = #open
* valueString 1..1

Extension: MedikationsplanVersion
Id: mp4p-extension-medikationsplan-version
Title: "Extension Medikationsplan Version MP4+"
Description: "Version der Spezifikation des Medikationsplans."
* ^url = "https://www.charite.de/fhir/medikationsplan/Extension/medikationsplan-version"
* ^version = "0.1.0"
* ^experimental = false
* ^publisher = "Charité"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.bihealth.org/en/research/core-facilities/interoperability/"
* ^context.type = #element
* ^context.expression = "Composition"
* url = "https://www.charite.de/fhir/medikationsplan/Extension/medikationsplan-version" (exactly)
* value[x] 1..
* value[x] only string
* value[x] ^slicing.discriminator.type = #type
* value[x] ^slicing.discriminator.path = "$this"
* value[x] ^slicing.rules = #open
* valueString 1..1