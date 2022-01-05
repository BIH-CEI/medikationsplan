Profile: OrganizationMP4P
Parent: Organization
Id: mp4p-organization
Title: "Organization MP4+"
Description: "Identifikation einer Organisation"
* ^url = "https://www.charite.de/fhir/medikationsplan/StructureDefinition/Organization"
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
    institutionskennzeichen 0..1 MS and
    apothekenidentifikationsnummer 0..1 MS
* identifier[institutionskennzeichen] only http://fhir.de/StructureDefinition/identifier-iknr
* identifier[institutionskennzeichen] ^patternIdentifier.type = $v2-0203#XX
* identifier[institutionskennzeichen].use 1..1 MS
* identifier[institutionskennzeichen].type 1..1 MS
* identifier[institutionskennzeichen].system MS
* identifier[institutionskennzeichen].value MS
* identifier[apothekenidentifikationsnummer] ^patternIdentifier.type = $v2-0203#RI
* identifier[apothekenidentifikationsnummer].use 1..1 MS
* identifier[apothekenidentifikationsnummer].use = #official
* identifier[apothekenidentifikationsnummer].type 1..1 MS
* identifier[apothekenidentifikationsnummer].type = $v2-0203#RI
* identifier[apothekenidentifikationsnummer].system 1..1 MS
* identifier[apothekenidentifikationsnummer].system = "http://fhir.de/sid/bfarm/btmnr"
* identifier[apothekenidentifikationsnummer].value 1..1 MS

Mapping: UKF-Organization
Id: UKF
Title: "UKF Mapping"
Source: OrganizationMP4P
* identifier[institutionskennzeichen].value -> "A@kik"
* identifier[apothekenidentifikationsnummer].value -> "A@idf"

Instance: ExampleOrganization
InstanceOf: mp4p-organization
Usage: #example
* meta.profile = "https://www.charite.de/fhir/medikationsplan/StructureDefinition/Organization"
* identifier[+].use = #official
* identifier[=].type = $v2-0203#RI
* identifier[=].system = "http://fhir.de/sid/bfarm/btmnr"
* identifier[=].value = "16081989"