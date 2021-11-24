Profile: MedicationMP4P
Parent: Medication
Id: mp4p-medikation
Title: "Medikation MP4+"
Description: "Dieses Profil beschreibt die Medikation."
* ^url = "https://www.charite.de/fhir/medikationsplan/StructureDefinition/Medication"
* ^version = "0.1.0"
* ^status = #draft
* ^publisher = "Charité"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.bihealth.org/en/research/core-facilities/interoperability/"
* id MS
* meta MS
* meta.profile MS
* language MS
* code 1..1 MS
* code ^short = "PZN-Code des Medikamentes"
* code ^definition = "Die Verwendung von PZN ist verpflichtent, die Codes können jedoch nicht validiert werden, da der gesamte Katalog der Codes nicht vorliegt."
* code.coding 0..1 MS
* code.coding ^short = "PZN-Nummer (@p)"
* code.coding ^slicing.discriminator.type = #pattern
* code.coding ^slicing.discriminator.path = "$this"
* code.coding ^slicing.rules = #open
* code.coding contains Pharmazentralnummer 1..1 MS
* code.coding[Pharmazentralnummer] ^patternCoding.system = "http://fhir.de/CodeSystem/ifa/pzn"
* code.coding[Pharmazentralnummer].system 1.. MS
* code.coding[Pharmazentralnummer].code 1.. MS
* code.coding[Pharmazentralnummer].display MS
* code.coding[Pharmazentralnummer].display ^short = "Handelsname"
* code.text MS
* code.text ^short = "Handelsname (@a)"
* code.text ^definition = "Handelsname des Medikamentes als Freitexteingabe (ohne PZN-Code) oder als von code.coding.display (Handelsname laut PZN) abweichender Handelsname"
* form MS
* form ^short = "Darreichungsform"
* form ^definition = "Darreichungsform codiert nach EDQMDoseForm oder als Freitext"
* form.coding MS
* form.coding ^slicing.discriminator.type = #pattern
* form.coding ^slicing.discriminator.path = "$this"
* form.coding ^slicing.rules = #open
* form.coding ^definition = "EDQM pharmaceutical dose forms."
* form.coding contains 
    EDQM 0..* MS and
    kbvDarreichungsform 0..* MS
* form.coding[EDQM] ^sliceName = "EDQM"
* form.coding[EDQM] ^patternCoding.system = "http://standardterms.edqm.eu"
* form.coding[EDQM] ^mustSupport = true
* form.coding[EDQM].system 1.. MS
* form.coding[EDQM].code 1.. MS
* form.coding[kbvDarreichungsform] from https://fhir.kbv.de/ValueSet/KBV_VS_MIO_NFD_S_KBV_DOSAGE_FORM (required)
* form.coding[kbvDarreichungsform] ^sliceName = "kbvDarreichungsform"
* form.coding[kbvDarreichungsform] ^patternCoding.system = "https://fhir.kbv.de/CodeSystem/KBV_CS_SFHIR_KBV_DARREICHUNGSFORM"
* form.coding[kbvDarreichungsform].system 1.. MS
* form.coding[kbvDarreichungsform].code 1.. MS
* form.text MS
* form.text ^short = "Darreichungsform als Freitext (@fd)"
* ingredient MS
* ingredient ^short = "Wirkstoff (W)"
* ingredient.item[x] only CodeableConcept
* ingredient.item[x] ^slicing.discriminator.type = #type
* ingredient.item[x] ^slicing.discriminator.path = "$this"
* ingredient.item[x] ^slicing.rules = #open
* ingredient.itemCodeableConcept 1..1 MS
* ingredient.itemCodeableConcept.coding MS
* ingredient.itemCodeableConcept.coding ^slicing.discriminator.type = #pattern
* ingredient.itemCodeableConcept.coding ^slicing.discriminator.path = "$this"
* ingredient.itemCodeableConcept.coding ^slicing.rules = #open
* ingredient.itemCodeableConcept.coding contains 
    ASK 0..1 MS and
    ATC 0..1 MS 
* ingredient.itemCodeableConcept.coding[ASK] from $ask (example)
* ingredient.itemCodeableConcept.coding[ASK] ^sliceName = "ASK"
* ingredient.itemCodeableConcept.coding[ASK] ^short = "Arzneistoffkatalog(ASK)-Nummer"
* ingredient.itemCodeableConcept.coding[ASK] ^patternCoding.system = "http://fhir.de/CodeSystem/ask"
* ingredient.itemCodeableConcept.coding[ASK] ^mustSupport = true
* ingredient.itemCodeableConcept.coding[ASK].system 1.. MS
* ingredient.itemCodeableConcept.coding[ASK].code 1.. MS
* ingredient.itemCodeableConcept.coding[ATC] ^sliceName = "ATC"
* ingredient.itemCodeableConcept.coding[ATC] ^short = "ATC Klassifikation"
* ingredient.itemCodeableConcept.coding[ATC] ^patternCoding.system = "http://www.whocc.no/atc"
* ingredient.itemCodeableConcept.coding[ATC] ^mustSupport = true
* ingredient.itemCodeableConcept.coding[ATC].system 1.. MS
* ingredient.itemCodeableConcept.coding[ATC].code 1.. MS
* ingredient.itemCodeableConcept.text MS
* ingredient.strength MS
* ingredient.strength.extension contains $Freitext named Freitext 0..* MS
* ingredient.strength.numerator MS
* ingredient.strength.denominator MS

Mapping: UKF-Medication
Id: UKF
Title: "UKF Mapping"
Source: MedicationMP4P

Instance: ExampleMedication
InstanceOf: MedicationMP4P
Usage: #example
* id = "7559cafa-b2ef-4a74-bb7b-ee00d7654082"
* meta.profile = "https://www.charite.de/fhir/medikationsplan/StructureDefinition/Medication"
* code.coding[Pharmazentralnummer] = $pzn#06312077 "ASS 100 - 1a Pharma TAH Tabletten"
* form.coding[0] = $standardterms#10219000 "Tablet"
* form.coding[+] = $KBV_CS_SFHIR_BMP_DARREICHUNGSFORM#TAB "Tabletten"
* ingredient.itemCodeableConcept = $ask-cs#00002 "Acetylsalicylsäure"
* ingredient.strength.numerator = 100 'mg' "milligram"
* ingredient.strength.denominator = 1 http://standardterms.edqm.eu#10219000 "Tablet"