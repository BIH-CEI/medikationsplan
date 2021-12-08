Invariant: lst-3
Description: "MedicationStatements, die in der Liste \"Bedarfsmedikation\" enthalten sind, sollen auch als dosage.asNeededBoolean = true gekennzeichnet sein."
Severity: #warning
Expression: "code.coding.where(code='411').empty() or entry.all($this.item.resolve().first().dosage.asNeededBoolean.allTrue())"

Invariant: lst-4
Description: "MedicationStatements, die in der Liste \"Dauermedikation\" enthalten sind, sollen auch als dosage.asNeededBoolean=false gekennzeichnet sein."
Severity: #warning
Expression: "code.coding.where(code='412').empty() or entry.all($this.item.resolve().first().dosage.asNeededBoolean.allFalse())"

Invariant: dqty-1
Description: ""
Severity: #error
Expression: "$this.extension.where(url='https://www.charite.de/fhir/medikationsplan/Extension/freitext').exists() xor ($this.value.exists() and $this.unit.exists() and $this.system.exists() and $this.code.exists())"