Profile: MedicationStatementMP4P
Parent: MedicationStatement
Id: mp4p-medicationstatement
Title: "MedicationStatement MP4+"
Description: "Dieses Profil beschreibt die Verordnung eines Arzneimittels."
* ^url = "https://www.charite.de/fhir/medikationsplan/StructureDefinition/MedicationStatement"
* ^version = "0.1.0"
* ^status = #draft
* ^publisher = "Charité"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.bihealth.org/en/research/core-facilities/interoperability/"
* id MS
* meta MS
* meta.profile MS
* language MS 
* basedOn 0..0
* partOf 0..0
* status MS
* category 0..0
* medication[x] MS
* medication[x] only Reference
* medication[x] ^slicing.discriminator.type = #type
* medication[x] ^slicing.discriminator.path = "$this"
* medication[x] ^slicing.rules = #closed
* medicationReference only Reference(https://www.charite.de/fhir/medikationsplan/StructureDefinition/Medication)
* medicationReference.reference 1..1 MS
* subject 1..1 MS
* subject only Reference(https://www.charite.de/fhir/medikationsplan/StructureDefinition/Patient)
* context 0..0
* effective[x] 0..1 MS
* effective[x] ^short = "Einnahmezeitraum"
* effective[x] only Period
* effective[x] ^slicing.discriminator.type = #type
* effective[x] ^slicing.discriminator.path = "$this"
* effective[x] ^slicing.rules = #open
* effectivePeriod.start 1..1 MS
* effectivePeriod.start ^short = "Beginn der Einnahme (@ms)"
* effectivePeriod.end 0..1 MS
* effectivePeriod.end ^short = "Ende der Einnahme (@me)"
* dateAsserted MS
* informationSource 0..0
* derivedFrom 0..0
* reasonCode.text MS
* reasonCode.text ^short = "Grund für die Einnahme (@r)"
* reasonReference 0..0
* note 0..1 MS
* dosage 1..4 MS
* dosage ^slicing.discriminator[0].type = #exists
* dosage ^slicing.discriminator[0].path = "text"
* dosage ^slicing.discriminator[1].type = #exists
* dosage ^slicing.discriminator[1].path = "timing"
* dosage ^slicing.rules = #closed
* dosage contains
    freitext 0..1 MS and
    fehlend 0..1 MS and
    kodiert 0..4 MS
* dosage[freitext].sequence 0..0
* dosage[freitext].text 1..1 MS
* dosage[freitext].additionalInstruction 0..0
* dosage[freitext].patientInstruction 0..1 MS
* dosage[freitext].timing 0..0
* dosage[freitext].asNeeded[x] 0..0
* dosage[freitext].site 0..0
* dosage[freitext].route 0..0
* dosage[freitext].method 0..0
* dosage[freitext].doseAndRate 0..0
* dosage[freitext].maxDosePerPeriod 0..0
* dosage[freitext].maxDosePerAdministration 0..0
* dosage[freitext].maxDosePerLifetime 0..0
* dosage[kodiert].sequence 0..0
* dosage[kodiert].text 0..0
* dosage[kodiert].additionalInstruction 0..0
* dosage[kodiert].patientInstruction 0..1 MS
* dosage[kodiert].timing 1..1 MS
* dosage[kodiert].timing.event 0..0
* dosage[kodiert].timing.repeat 0..0
* dosage[kodiert].timing.code 1..1 MS
* dosage[kodiert].timing.code ^short = "Einnahmezeitpunkt (M@m|M@d|M@v|M@h)"
* dosage[kodiert].timing.code.coding 1..* MS
* dosage[kodiert].timing.code.coding ^slicing.discriminator.type = #pattern
* dosage[kodiert].timing.code.coding ^slicing.discriminator.path = "$this"
* dosage[kodiert].timing.code.coding ^slicing.rules = #open
* dosage[kodiert].timing.code.coding contains
    snomed 1..1 MS and
    timingEvent 0..1 MS
* dosage[kodiert].timing.code.coding[snomed] from https://fhir.kbv.de/ValueSet/KBV_VS_MIO_NFD_Dosage_Point_Of_Time (required)
* dosage[kodiert].timing.code.coding[snomed] ^patternCoding.system = http://snomed.info/sct
* dosage[kodiert].timing.code.coding[snomed].system 1..1 MS
* dosage[kodiert].timing.code.coding[snomed].code 1..1 MS
* dosage[kodiert].timing.code.coding[timingEvent] from EinnahmezeitpunkteV3 (required)
* dosage[kodiert].timing.code.coding[timingEvent] ^patternCoding.system = http://terminology.hl7.org/CodeSystem/v3-TimingEvent
* dosage[kodiert].timing.code.coding[timingEvent].system 1..1 MS
* dosage[kodiert].timing.code.coding[timingEvent].code 1..1 MS
* dosage[kodiert].site 0..0
* dosage[kodiert].route 0..0
* dosage[kodiert].method 0..0
* dosage[kodiert].doseAndRate 1..1 MS
* dosage[kodiert].doseAndRate.type 0..0
* dosage[kodiert].doseAndRate.dose[x] ^slicing.discriminator.type = #type
* dosage[kodiert].doseAndRate.dose[x] ^slicing.discriminator.path = "$this"
* dosage[kodiert].doseAndRate.dose[x] ^slicing.rules = #closed
* dosage[kodiert].doseAndRate.doseQuantity only SimpleQuantity
* dosage[kodiert].doseAndRate.doseQuantity obeys dqty-1
* dosage[kodiert].doseAndRate.doseQuantity ^short = "Dosiereinheit kodiert (M@du)"
* dosage[kodiert].doseAndRate.doseQuantity.value MS
* dosage[kodiert].doseAndRate.doseQuantity.unit MS
* dosage[kodiert].doseAndRate.doseQuantity.system MS
* dosage[kodiert].doseAndRate.doseQuantity.system = $KBV_CS_SFHIR_BMP_DOSIEREINHEIT (exactly)
* dosage[kodiert].doseAndRate.doseQuantity.code MS
* dosage[kodiert].doseAndRate.doseQuantity.code from https://fhir.kbv.de/ValueSet/KBV_VS_SFHIR_BMP_DOSIEREINHEIT (required)
* dosage[kodiert].doseAndRate.doseQuantity.extension contains https://www.charite.de/fhir/medikationsplan/Extension/freitext named freitextDosiereinheit 0..1 MS
* dosage[kodiert].doseAndRate.doseRange only Range
* dosage[kodiert].doseAndRate.rate[x] 0..0
* dosage[kodiert].maxDosePerPeriod 0..0
* dosage[kodiert].maxDosePerAdministration 0..0
* dosage[kodiert].maxDosePerLifetime 0..0
* dosage[fehlend].extension contains http://hl7.org/fhir/StructureDefinition/data-absent-reason named dataAbsentReason 0..1 MS
* dosage[fehlend].sequence 0..0
* dosage[fehlend].text 0..0
* dosage[fehlend].additionalInstruction 0..0
* dosage[fehlend].patientInstruction 0..0
* dosage[fehlend].timing 0..0
* dosage[fehlend].asNeeded[x] 0..0
* dosage[fehlend].site 0..0
* dosage[fehlend].route 0..0
* dosage[fehlend].method 0..0
* dosage[fehlend].doseAndRate 0..0
* dosage[fehlend].maxDosePerPeriod 0..0
* dosage[fehlend].maxDosePerAdministration 0..0
* dosage[fehlend].maxDosePerLifetime 0..0

Mapping: UKF-MedicationStatement
Id: UKF
Title: "UKF Mapping"
Source: MedicationStatementMP4P
* -> "M"
* dosage[kodiert].timing.code.coding[snomed].code -> "M@m"
* dosage[kodiert].timing.code.coding[timingEvent].code -> "M@m"
* dosage[kodiert].timing.code.coding[snomed].code -> "M@d"
* dosage[kodiert].timing.code.coding[timingEvent].code -> "M@d"
* dosage[kodiert].timing.code.coding[snomed].code -> "M@v"
* dosage[kodiert].timing.code.coding[timingEvent].code -> "M@v"
* dosage[kodiert].timing.code.coding[snomed].code -> "M@h"
* dosage[kodiert].timing.code.coding[timingEvent].code -> "M@h"
* dosage[kodiert].doseAndRate.doseQuantity.code -> "M@du"
* dosage[kodiert].doseAndRate.doseQuantity.extension[freitextDosiereinheit].valueString -> "M@dud"
* dosage[freitext].text -> "M@t"
* reasonCode.text -> "M@r"
* dosage[freitext].patientInstruction  -> "M@i"
* dosage[kodiert].patientInstruction  -> "M@i"

Instance: ExampleMedicationStatement
InstanceOf: mp4p-medicationstatement
Usage: #example
* meta.profile = "https://www.charite.de/fhir/medikationsplan/StructureDefinition/MedicationStatement"
* status = #active
* medicationReference = Reference(ExampleMedication)
* subject = Reference(ExamplePatient)
* effectivePeriod.start = "2021-01-03"
* dosage[kodiert].timing.code.coding[snomed] = $snomed#71997007 "Noon (qualifier value)"
* dosage[kodiert].timing.code.coding[timingEvent] = $TimingEvent#CD "Mittags"
* dosage[kodiert].doseAndRate.doseQuantity.value = 1
* dosage[kodiert].doseAndRate.doseQuantity.unit = "Stück"
* dosage[kodiert].doseAndRate.doseQuantity.system = $KBV_CS_SFHIR_BMP_DOSIEREINHEIT
* dosage[kodiert].doseAndRate.doseQuantity.code = #1

Instance: ExampleMedicationStatement-2
InstanceOf: mp4p-medicationstatement
Usage: #example
* meta.profile = "https://www.charite.de/fhir/medikationsplan/StructureDefinition/MedicationStatement"
* status = #active
* medicationReference = Reference(ExampleMedication)
* subject = Reference(ExamplePatient)
* effectivePeriod.start = "2021-01-03"
* dosage[kodiert].timing.code.coding[snomed] = $snomed#71997007 "Noon (qualifier value)"
* dosage[kodiert].timing.code.coding[timingEvent] = $TimingEvent#CD "Mittags"
* dosage[kodiert].doseAndRate.doseQuantity.extension[freitextDosiereinheit].valueString = "1 Tablette"
