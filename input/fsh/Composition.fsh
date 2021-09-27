Profile: CompositionMPPP
Parent: Composition
Id: mp-composition
Title: "Composition MP++"
* ^url = "https://www.charite.de/fhir/medikationsplan/StructureDefinition/composition"
* ^version = "0.1.0"
* ^status = #draft
* ^publisher = "Charité"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.bihealth.org/en/research/core-facilities/interoperability/"
* id MS
* meta MS
* meta.profile MS
* language MS
* identifier 1..1 MS
* identifier.system 1..1 MS
* identifier.value 1..1 MS
* status MS
* status = #final (exactly)
* type MS
* type.coding MS
* type.coding.system = "http://loinc.org"
* type.coding.code = #77603-9
* type.coding.display MS
* subject MS
* subject only Reference(Patient)
* subject.reference 1..1 MS
* encounter 0..0
* date MS
* author only Reference(https://www.charite.de/fhir/medikationsplan/StructureDefinition/practitioner)
* title 1..1 MS
* custodian ^slicing.discriminator.type = #pattern
* custodian ^slicing.discriminator.path = "identifier"
* custodian ^slicing.rules = #closed
* custodian contains
    Apotheke 0..1 MS and
    Praxis 0..1 MS
* custodian[Apotheke].identifier ^patternIdentifier.system = "http://fhir.de/NamingSystem/bfarm/btmnr"
* custodian[Apotheke].identifier 1..1
* custodian[Praxis].identifier ^patternIdentifier.system = "http://fhir.de/NamingSystem/kbv/bsnr"
* custodian[Praxis].identifier 1..1
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
* section[medikationsplanSection].code MS
* section[medikationsplanSection].code.coding MS
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
* section[gesundheitsBelange].entry ^slicing.discriminator.path = "reference"
* section[gesundheitsBelange].entry ^slicing.rules = #closed
* section[gesundheitsBelange].entry contains
    schwangerschaft 0..1 MS and 
    stillzeit 0..1 MS
* section[gesundheitsBelange].entry[schwangerschaft] only Reference(http://hl7.org/fhir/uv/ips/StructureDefinition/Observation-pregnancy-status-uv-ips)
* section[gesundheitsBelange].entry[schwangerschaft].reference 1..1 MS
* section[gesundheitsBelange].entry[stillzeit] only Reference(https://www.charite.de/fhir/medikationsplan/StructureDefinition/observation-breastfeeding)
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
* section[klinischeParameter].code.coding.code = #755752-0 (exactly)
* section[klinischeParameter].code.coding.display MS
* section[klinischeParameter].mode 0..0
* section[klinischeParameter].orderedBy 0..0
* section[klinischeParameter].entry 0..* MS
* section[klinischeParameter].entry ^slicing.discriminator.type = #profile
* section[klinischeParameter].entry ^slicing.discriminator.path = "reference"
* section[klinischeParameter].entry ^slicing.rules = #closed
* section[klinischeParameter].entry contains
    gewicht 0..1 MS and 
    groesse 0..1 MS and
    creatinin 0..1 MS
* section[klinischeParameter].entry[gewicht] only Reference(http://fhir.de/StructureDefinition/observation-de-vitalsign-koerpergewicht)
* section[klinischeParameter].entry[gewicht].reference 1..1 MS
* section[klinischeParameter].entry[groesse] only Reference(http://fhir.de/StructureDefinition/observation-de-vitalsign-koerpergroesse)
* section[klinischeParameter].entry[groesse].reference 1..1 MS
* section[klinischeParameter].entry[creatinin] only Reference(https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/ObservationLab)
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