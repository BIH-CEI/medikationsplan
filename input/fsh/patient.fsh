// This is a simple example of a FSH file.
// This file can be renamed, and additional FSH files can be added.
// SUSHI will look for definitions in any file using the .fsh ending.
Profile: PatientMP4P
Parent: Patient
Id: mp4p-patient
Title: "Patient MP4+"
Description: "Demografische und administrative Informationen zur Identifikation des Patienten"
* ^url = "https://www.charite.de/fhir/medikationsplan/StructureDefinition/Patient"
* ^version = "0.1.0"
* ^status = #draft
* ^publisher = "Charité"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.bihealth.org/en/research/core-facilities/interoperability/"
* id MS
* meta MS
* meta.profile MS
* language MS
* identifier 1.. MS
* identifier ^slicing.discriminator.type = #pattern
* identifier ^slicing.discriminator.path = "$this"
* identifier ^slicing.rules = #open
* identifier contains
    versichertenId_GKV 0..1 MS and
    pid 0..* MS and
    versichertennummer_pkv 0..1 MS
* identifier[versichertenId_GKV] only http://fhir.de/StructureDefinition/identifier-kvid-10
* identifier[versichertenId_GKV] ^patternIdentifier.type = $identifier-type-de-basis#GKV
* identifier[pid] only http://fhir.de/StructureDefinition/identifier-pid
* identifier[pid] ^patternIdentifier.type = $v2-0203#MR
* identifier[versichertennummer_pkv] only http://fhir.de/StructureDefinition/identifier-pkv
* identifier[versichertennummer_pkv] ^patternIdentifier.type = $identifier-type-de-basis#PKV
* name 1.. MS
* name ^slicing.discriminator.type = #pattern
* name ^slicing.discriminator.path = "$this"
* name ^slicing.rules = #open
* name contains
    name 1..1 MS
* name[name] only http://fhir.de/StructureDefinition/humanname-de-basis
* name[name] ^patternHumanName.use = #official
* gender MS
* gender.extension ^slicing.discriminator.type = #value
* gender.extension ^slicing.discriminator.path = "url"
* gender.extension ^slicing.rules = #open
* gender.extension contains http://fhir.de/StructureDefinition/gender-amtlich-de named other-amtlich 0..1 MS
* birthDate MS
* address MS
* address ^slicing.discriminator.type = #pattern
* address ^slicing.discriminator.path = "$this"
* address ^slicing.rules = #open
* address contains
    Strassenanschrift 0..* MS
* address[Strassenanschrift] only http://fhir.de/StructureDefinition/address-de-basis
* address[Strassenanschrift] ^patternAddress.type = #both
* contact.name only http://fhir.de/StructureDefinition/humanname-de-basis
* contact.address only http://fhir.de/StructureDefinition/address-de-basis
* communication MS
  * language MS
    * coding MS
      * system MS
      * code MS
      * display MS


Mapping: UKF-Patient
Id: UKF
Title: "UKF Mapping"
Source: PatientMP4P
* identifier[versichertenId_GKV].value -> "P@egk"
* name[name].family -> "P@f"
* name[name].family.extension[namenszusatz] -> "P@z"
* name[name].family.extension[vorsatzwort] -> "P@v"
* name[name].given -> "P@g"
* name[name].prefix -> "P@t"
* gender -> "P@s"
* birthDate -> "P@b"

Instance: ExamplePatient
InstanceOf: mp4p-patient
Usage: #example
* meta.profile = "https://www.charite.de/fhir/medikationsplan/StructureDefinition/Patient"
* identifier[+].use = #official
* identifier[=].type = $identifier-type-de-basis#GKV
* identifier[=].system = "http://fhir.de/sid/gkv/kvid-10"
* identifier[=].value = "Z234567890"
* name[name].use = #official
* name[name].family = "Schumann"
* name[name].family.extension.url = "http://hl7.org/fhir/StructureDefinition/humanname-own-name"
* name[name].family.extension.valueString = "Schumann"
* name[name].given[0] = "Clara"
* name[name].given[+] = "Josephine"

