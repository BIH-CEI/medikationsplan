Profile: AllergyIntoleranceMPPP
Parent: AllergyIntolerance
Id: mp-allergyintolerance
Title: "AllergyIntolerance MP++"
Description: "Allergie"
* ^url = "https://www.charite.de/fhir/medikationsplan/StructureDefinition/AllergyIntolerance"
* ^version = "0.1.0"
* ^status = #draft
* ^publisher = "Charité"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.bihealth.org/en/research/core-facilities/interoperability/"
* id MS
* meta MS
* meta.profile MS
* language MS 
* clinicalStatus MS
* verificationStatus MS
* type MS 
* criticality MS
* code MS
* code.coding ^slicing.discriminator[0].type = #pattern
* code.coding ^slicing.discriminator[0].path = "$this"
* code.coding ^slicing.rules = #open
* code.coding contains 
    alpha-id 1..1
* code.coding[alpha-id] MS
* code.coding[alpha-id] ^patternCoding.system = "http://fhir.de/CodeSystem/dimdi/alpha-id"
* code.coding[alpha-id] from AllergiesIntolerancesAlphaID (required)
* code.coding[alpha-id].system MS
* code.coding[alpha-id].code MS 
* code.coding[alpha-id].display MS
* code.text MS
* patient MS
* patient.reference 1.. MS
* onset[x] MS
* recordedDate 0..0
* recorder 0..0
* asserter 0..0
* lastOccurrence 0..0
* note 0..0
* reaction MS
* reaction.substance 0..0
* reaction.manifestation MS
* reaction.manifestation.coding MS
* reaction.manifestation.coding.system MS
* reaction.manifestation.coding.code MS
* reaction.manifestation.coding.display MS
* reaction.description 0..0
* reaction.onset 0..0
* reaction.severity 0..0
* reaction.exposureRoute 0..0
* reaction.note 0..0



