Alias: $MII-Reference = https://www.medizininformatik-initiative.de/fhir/core/StructureDefinition/MII-Reference
Alias: $target-site-uv-ips = http://hl7.org/fhir/uv/ips/ValueSet/target-site-uv-ips
Alias: $medicine-route-of-administration = http://hl7.org/fhir/uv/ips/ValueSet/medicine-route-of-administration

Profile: MedStatement
Parent: MedicationStatement
Id: mp-medicationstatement
Title: "MedicationStatement MP++"
Description: "Dieses Profil beschreibt die Verordnung eines Arzneimittels."
* ^url = "https://www.charite.de./fhir/medikationsplan/StructureDefinition/MedicationStatement"
* ^version = "0.1.0"
* ^status = #draft
* ^publisher = "Charité"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.bihealth.org/en/research/core-facilities/interoperability/"
* id MS
* meta MS
* meta.profile MS
* language MS 
* identifier 1..* MS 
* identifier.system 1..1 MS 
* identifier.value 1..1 MS 
* status MS
* medication[x] MS
* medication[x] only Reference
* medication[x] ^slicing.discriminator.type = #type
* medication[x] ^slicing.discriminator.path = "$this"
* medication[x] ^slicing.rules = #closed
* medicationReference only Reference(https://www.charite.de/fhir/medikationsplan/StructureDefinition/Medication)
* medicationReference.reference 1..1 MS
* subject 1..1 MS
* subject only Reference(Patient)
* effective[x] 0..1 MS
* effective[x] only Period
* effective[x] ^slicing.discriminator.type = #type
* effective[x] ^slicing.discriminator.path = "$this"
* effective[x] ^slicing.rules = #open
* effectivePeriod.start 1..1 MS
* effectivePeriod.end 0..1 MS
* dateAsserted MS
* note MS
* dosage 1..5 MS
* dosage ^slicing.discriminator.type = #exists
* dosage ^slicing.discriminator.path = "text"
* dosage ^slicing.rules = #closed
* dosage contains
    freitext 0..1 MS and
    kodiert 0..4 MS
* dosage[freitext].text 1..1 MS
* dosage[freitext].additionalInstruction 0..0
* dosage[freitext].patientInstruction 0..0
* dosage[freitext].timing 0..0
* dosage[freitext].asNeeded[x] only boolean
* dosage[freitext].asNeeded[x] ^slicing.discriminator.type = #type
* dosage[freitext].asNeeded[x] ^slicing.discriminator.path = "$this"
* dosage[freitext].asNeeded[x] ^slicing.rules = #open
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
* dosage[kodiert].patientInstruction 0..0
* dosage[kodiert].timing MS
* dosage[kodiert].timing.event 0..0
* dosage[kodiert].timing.repeat 0..0
* dosage[kodiert].timing.code MS
* dosage[kodiert].timing.code from Einnahmezeitpunkte (required)
* dosage[kodiert].timing.code.coding 0..1 MS
* dosage[kodiert].timing.code.coding.system MS
* dosage[kodiert].timing.code.coding.code MS
* dosage[kodiert].asNeeded[x] 0..0
* dosage[kodiert].site 0..0
* dosage[kodiert].route 0..0
* dosage[kodiert].method 0..0
* dosage[kodiert].doseAndRate 1..1 MS
* dosage[kodiert].doseAndRate.type 0..0
* dosage[kodiert].doseAndRate.dose[x] only SimpleQuantity
* dosage[kodiert].doseAndRate.dose[x] ^slicing.discriminator.type = #type
* dosage[kodiert].doseAndRate.dose[x] ^slicing.discriminator.path = "$this"
* dosage[kodiert].doseAndRate.dose[x] ^slicing.rules = #open
* dosage[kodiert].doseAndRate.dose[x] contains 
    doseQuantity 1..1 MS
* dosage[kodiert].doseAndRate.doseQuantity.value MS
* dosage[kodiert].doseAndRate.doseQuantity.unit MS
* dosage[kodiert].doseAndRate.doseQuantity.system MS
* dosage[kodiert].doseAndRate.doseQuantity.code MS
* dosage[kodiert].doseAndRate.rate[x] 0..0
* dosage[kodiert].maxDosePerPeriod 0..0
* dosage[kodiert].maxDosePerAdministration 0..0
* dosage[kodiert].maxDosePerLifetime 0..0