Profile: CompositionMP4P
Parent: Composition
Id: mp4p-composition
Title: "Composition MP4+"
Description: "Die Composition definiert die Struktur des Medikationsplans."
* ^url = "https://www.charite.de/fhir/medikationsplan/StructureDefinition/Composition"
* ^version = "0.1.0"
* ^status = #draft
* ^publisher = "Charité"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.bihealth.org/en/research/core-facilities/interoperability/"
* id MS
* meta MS
* meta.profile MS
* language MS
* extension contains $MedikationsplanVersion named medikationsplanVersion 0..1 MS
* identifier 1.. MS
* identifier.system 1.. MS
* identifier.value 1.. MS
* status MS
* status = #final (exactly)
* type MS
* type.coding MS
* type.coding ^slicing.discriminator[0].type = #pattern
* type.coding ^slicing.discriminator[0].path = "$this"
* type.coding ^slicing.rules = #open
* type.coding contains
    loinc 1..* MS
* type.coding[loinc] = $loinc#77603-9
* type.coding[loinc].system 1.. MS
* type.coding[loinc].code 1.. MS
* subject 1..1 MS
* subject only Reference(https://www.charite.de/fhir/medikationsplan/StructureDefinition/Patient)
* subject.reference 1..1 MS
* encounter 0..0
* date MS
* author only Reference(https://www.charite.de/fhir/medikationsplan/StructureDefinition/Practitioner or https://www.charite.de/fhir/medikationsplan/StructureDefinition/Organization)
* author 1..1 MS 
* title 1..1 MS
* custodian MS
* custodian only Reference(https://www.charite.de/fhir/medikationsplan/StructureDefinition/Organization)
* relatesTo 0..0
* event 0..0
* section MS
* section ^slicing.discriminator.type = #value
* section ^slicing.discriminator.path = "code.coding.code"
* section ^slicing.rules = #open
* section contains 
    medikationsplanSection 1..1 MS and
    allergienSection 0..1 MS and
    gesundheitsBelange 0..1 MS and
    klinischeParameter 0..1 MS and
    hinweiseSection 0..1 MS
* section[medikationsplanSection].title MS
* section[medikationsplanSection].title = "aktuelle Medikation"
* section[medikationsplanSection].code 1.. MS
* section[medikationsplanSection].code.coding 1.. MS
* section[medikationsplanSection].code.coding.system 1..1 MS
* section[medikationsplanSection].code.coding.system = "http://loinc.org" (exactly)
* section[medikationsplanSection].code.coding.code 1..1 MS
* section[medikationsplanSection].code.coding.code = #19009-0 (exactly)
* section[medikationsplanSection].code.coding.display MS
* section[medikationsplanSection].mode 0..0
* section[medikationsplanSection].orderedBy 0..0
* section[medikationsplanSection].entry 1..* MS
* section[medikationsplanSection].entry only Reference(https://www.charite.de/fhir/medikationsplan/StructureDefinition/List)
* section[medikationsplanSection].entry.reference 1..1 MS
* section[medikationsplanSection].emptyReason 0..0
* section[medikationsplanSection].section 0..0
* section[allergienSection].title MS
//* section[allergienSection].title = ""
* section[allergienSection].code MS
* section[allergienSection].code.coding MS
* section[allergienSection].code.coding.system 1..1 MS
* section[allergienSection].code.coding.system = "http://loinc.org" (exactly)
* section[allergienSection].code.coding.code 1..1 MS
* section[allergienSection].code.coding.code = #48765-2 (exactly)
* section[allergienSection].code.coding.display MS
* section[allergienSection].mode 0..0
* section[allergienSection].orderedBy 0..0
* section[allergienSection].entry 1..* MS
* section[allergienSection].entry only Reference(https://www.charite.de/fhir/medikationsplan/StructureDefinition/AllergyIntolerance)
* section[allergienSection].entry.reference 1..1 MS
* section[allergienSection].emptyReason 0..0
* section[allergienSection].section 0..0
* section[gesundheitsBelange].title MS
//* section[gesundheitsBelange].title = "aktuelle Medikation"
* section[gesundheitsBelange].code MS
* section[gesundheitsBelange].code.coding MS
* section[gesundheitsBelange].code.coding.system 1..1 MS
* section[gesundheitsBelange].code.coding.system = "http://loinc.org" (exactly)
* section[gesundheitsBelange].code.coding.code 1..1 MS
* section[gesundheitsBelange].code.coding.code = #75310-3 (exactly)
* section[gesundheitsBelange].code.coding.display MS
* section[gesundheitsBelange].mode 0..0
* section[gesundheitsBelange].orderedBy 0..0
* section[gesundheitsBelange].entry 0..* MS
* section[gesundheitsBelange].entry ^slicing.discriminator.type = #profile
* section[gesundheitsBelange].entry ^slicing.discriminator.path = "$this.resolve()"
* section[gesundheitsBelange].entry ^slicing.rules = #open
* section[gesundheitsBelange].entry contains
    schwangerschaft 0..1 MS and 
    stillzeit 0..1 MS
* section[gesundheitsBelange].entry[schwangerschaft] only Reference(https://www.charite.de/fhir/medikationsplan/StructureDefinition/StatusSchwanger)
* section[gesundheitsBelange].entry[schwangerschaft].reference 1..1 MS
* section[gesundheitsBelange].entry[stillzeit] only Reference(https://www.charite.de/fhir/medikationsplan/StructureDefinition/StatusStillend)
* section[gesundheitsBelange].entry[stillzeit].reference 1..1 MS
* section[gesundheitsBelange].emptyReason 0..0
* section[gesundheitsBelange].section 0..0
* section[klinischeParameter].title MS
* section[klinischeParameter].title = "Klinische Parameter"
* section[klinischeParameter].code MS
* section[klinischeParameter].code.coding MS
* section[klinischeParameter].code.coding.system 1..1 MS
* section[klinischeParameter].code.coding.system = "http://loinc.org" (exactly)
* section[klinischeParameter].code.coding.code 1..1 MS
* section[klinischeParameter].code.coding.code = #55752-0 (exactly)
* section[klinischeParameter].code.coding.display MS
* section[klinischeParameter].mode 0..0
* section[klinischeParameter].orderedBy 0..0
* section[klinischeParameter].entry 0..* MS
* section[klinischeParameter].entry ^slicing.discriminator.type = #profile
* section[klinischeParameter].entry ^slicing.discriminator.path = "$this.resolve()"
* section[klinischeParameter].entry ^slicing.rules = #open
* section[klinischeParameter].entry contains
    gewicht 0..1 MS and 
    groesse 0..1 MS and
    creatinin 0..1 MS
* section[klinischeParameter].entry[gewicht] only Reference(https://www.charite.de/fhir/medikationsplan/StructureDefinition/Koerpergewicht)
* section[klinischeParameter].entry[gewicht].reference 1..1 MS
* section[klinischeParameter].entry[groesse] only Reference(https://www.charite.de/fhir/medikationsplan/StructureDefinition/Koerpergroesse)
* section[klinischeParameter].entry[groesse].reference 1..1 MS
* section[klinischeParameter].entry[creatinin] only Reference(https://www.charite.de/fhir/medikationsplan/StructureDefinition/Kreatininwert)
* section[klinischeParameter].entry[creatinin].reference 1..1 MS
* section[klinischeParameter].emptyReason 0..0
* section[klinischeParameter].section 0..0
* section[hinweiseSection].title MS
//* section[hinweiseSection].title = "aktuelle Medikation"
* section[hinweiseSection].code MS
* section[hinweiseSection].code.coding MS
* section[hinweiseSection].code.coding.system 1..1 MS
* section[hinweiseSection].code.coding.system = "http://loinc.org" (exactly)
* section[hinweiseSection].code.coding.code 1..1 MS
* section[hinweiseSection].code.coding.code = #69730-0 (exactly)
* section[hinweiseSection].code.coding.display MS
* section[hinweiseSection].text 1..1 MS
* section[hinweiseSection].mode 0..0
* section[hinweiseSection].orderedBy 0..0
* section[hinweiseSection].entry 0..0
* section[hinweiseSection].emptyReason 0..0
* section[hinweiseSection].section 0..0

Mapping: UKF-Composition
Id: UKF
Title: "UKF Mapping"
Source: CompositionMP4P
* -> "MP"
* extension[medikationsplanVersion].valueString -> "MP@v"
* section[hinweiseSection].text -> "X"
* identifier.value -> "MP@U"
* date -> "A@t"


Instance: ExampleComposition
InstanceOf: mp4p-composition
Usage: #example
* meta.profile = "https://www.charite.de/fhir/medikationsplan/StructureDefinition/Composition"
* extension[medikationsplanVersion].url = "https://www.charite.de/fhir/medikationsplan/Extension/medikationsplan-version"
* extension[medikationsplanVersion].valueString = "2.6"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:f1addd63-aaff-4287-aa8e-e5bdc075043d"
* status = #final
* type.coding[loinc] = $loinc#77603-9
* subject = Reference(ExamplePatient)
* date = "2021-11-23"
* author = Reference(ExamplePractitioner)
* title = "Medikationsplan"
* section[medikationsplanSection].code = $loinc#19009-0
* section[medikationsplanSection].entry = Reference(ExampleList)
//* section[medikationsplanSection].entry.reference = "http://example.org/List/ExampleList"
* section[klinischeParameter].code = $loinc#55752-0
* section[klinischeParameter].entry[gewicht] = Reference(ExampleKoerpergewicht)
//* section[klinischeParameter].entry[gewicht].reference = "http://example.org/Observation/ExampleKoerpergewicht"