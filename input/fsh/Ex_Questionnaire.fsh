Instance: QuestionnaireRadiologyOrder
InstanceOf: ChOrfQuestionnaire
Title: "Questionnaire Radiology Order"
Description: "Example for Questionnaire"

/* -------------------------------------------------------------------------------------------------------
Nur absolute "Required" sind markiert; es wird dann noch relative Required geben
Bsp: Fragestellung ist required ausser bei Bestllung alter Bider
   -------------------------------------------------------------------------------------------------------*/

* meta.profile[+] = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-questionnaire"
* meta.profile[+] = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire"
* meta.profile[+] = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-extract"

* extension[targetStructureMap].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-targetStructureMap"
* extension[targetStructureMap].valueCanonical = "http://fhir.ch/ig/ch-orf/StructureMap/OrfQrToBundle"
// TBD * extension[targetStructureMap].valueCanonical = "http://fhir.ch/ig/ch-rad-order/StructureMap/RadOrderQrToBundle"


* url = "http://fhir.ch/ig/ch-rad-order/Questionnaire/QuestionnaireRadiologyOrder"
* name = "QuestionnaireRadiologyOrder"
* title = "Questionnaire Radiology Order"
* status = #active
* subjectType = #Patient
* date = "2021-02-24"
* publisher = "HL7 Switzerland"

// ---------- order (Auftrag) ----------
* item[+].linkId = "order"
* item[=].text = "Auftrag"
* item[=].type = #group
* item[=].required = true

* item[=].item[+].linkId = "order.placerOrderIdentifier"
* item[=].item[=].text = "Auftragsnummer des Auftraggebers"
* item[=].item[=].type = #string
* item[=].item[=].required = true

* item[=].item[+].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
* item[=].item[=].extension.valueBoolean = true
* item[=].item[=].linkId = "order.placerOrderIdentifierDomain"
* item[=].item[=].text = "Identifier Domain der Auftragsnummer des Auftraggebers"
* item[=].item[=].type = #string
* item[=].item[=].required = true

* item[=].item[+].linkId = "order.fillerOrderIdentifier"
* item[=].item[=].text = "Auftragsnummer des Auftragsempfängers"
* item[=].item[=].type = #string

* item[=].item[+].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
* item[=].item[=].extension.valueBoolean = true
* item[=].item[=].linkId = "order.fillerOrderIdentifierDomain"
* item[=].item[=].text = "Identifier Domain der Auftragsnummer des Auftragsempfängers"
* item[=].item[=].type = #string

* item[=].item[+].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
* item[=].item[=].extension.valueBoolean = true
* item[=].item[=].linkId = "order.precedentDocumentIdentifier"
* item[=].item[=].text = "Identifier des Vorgängerdokuments"
* item[=].item[=].type = #string

// ---------- Urgent Notification Contact for this document ----------
* item[=].item[+].linkId = "order.notificationContactDocument"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitionerrole"
* item[=].item[=].text = "Dringender Benachrichtigungskontakt für dieses Dokument"
* item[=].item[=].type = #group

* item[=].item[=].item[+].linkId = "order.notificationContactDocument.practitioner"
* item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitioner"
* item[=].item[=].item[=].text = "Zu benachrichtigende Person"
* item[=].item[=].item[=].type = #group

* item[=].item[=].item[=].item[+].linkId = "order.notificationContactDocument.practitioner.title"
* item[=].item[=].item[=].item[=].text = "Titel"
* item[=].item[=].item[=].item[=].type = #string

* item[=].item[=].item[=].item[+].linkId = "order.notificationContactDocument.practitioner.familyName"
* item[=].item[=].item[=].item[=].text = "Name"
* item[=].item[=].item[=].item[=].type = #string

* item[=].item[=].item[=].item[+].linkId = "order.notificationContactDocument.practitioner.givenName"
* item[=].item[=].item[=].item[=].text = "Vorname"
* item[=].item[=].item[=].item[=].type = #string

* item[=].item[=].item[=].item[+].linkId = "order.notificationContactDocument.practitioner.phone"
* item[=].item[=].item[=].item[=].text = "Telefon"
* item[=].item[=].item[=].item[=].type = #string

* item[=].item[=].item[=].item[+].linkId = "order.notificationContactDocument.practitioner.email"
* item[=].item[=].item[=].item[=].text = "E-Mail"
* item[=].item[=].item[=].item[=].type = #string

// ---------- Urgent Notification Contact for the Response to this document ----------
* item[=].item[+].linkId = "order.notificationContactDocumentResponse"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitionerrole"
* item[=].item[=].text = "Dringender Benachrichtigungskontakt für die Antwort auf dieses Dokument"
* item[=].item[=].type = #group

* item[=].item[=].item[+].linkId = "order.notificationContactDocumentResponse.practitioner"
* item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitioner"
* item[=].item[=].item[=].text = "Zu benachrichtigende Person"
* item[=].item[=].item[=].type = #group

* item[=].item[=].item[=].item[+].linkId = "order.notificationContactDocumentResponse.practitioner.title"
* item[=].item[=].item[=].item[=].text = "Titel"
* item[=].item[=].item[=].item[=].type = #string

* item[=].item[=].item[=].item[+].linkId = "order.notificationContactDocumentResponse.practitioner.familyName"
* item[=].item[=].item[=].item[=].text = "Name"
* item[=].item[=].item[=].item[=].type = #string

* item[=].item[=].item[=].item[+].linkId = "order.notificationContactDocumentResponse.practitioner.givenName"
* item[=].item[=].item[=].item[=].text = "Vorname"
* item[=].item[=].item[=].item[=].type = #string

* item[=].item[=].item[=].item[+].linkId = "order.notificationContactDocumentResponse.practitioner.phone"
* item[=].item[=].item[=].item[=].text = "Telefon"
* item[=].item[=].item[=].item[=].type = #string

* item[=].item[=].item[=].item[+].linkId = "order.notificationContactDocumentResponse.practitioner.email"
* item[=].item[=].item[=].item[=].text = "E-Mail"
* item[=].item[=].item[=].item[=].type = #string

// ---------- Order Priority ----------
* item[=].item[+].linkId = "order.priority"
* item[=].item[=].text = "Auftragspriorität"
* item[=].item[=].type = #choice
* item[=].item[=].answerOption[+].valueCoding = RequestPriority#routine "Die Anfrage hat normale Priorität."
* item[=].item[=].answerOption[=].initialSelected = true
* item[=].item[=].answerOption[+].valueCoding = RequestPriority#urgent "Die Anfrage sollte dringend bearbeitet werden - höhere Priorität als normal."
* item[=].item[=].answerOption[+].valueCoding = RequestPriority#asap "Die Anfrage sollte so schnell wie möglich bearbeitet werden - höhere Priorität als dringend."
* item[=].item[=].answerOption[+].valueCoding = RequestPriority#stat "Die Anfrage sollte sofort bearbeitet werden - höchstmögliche Priorität. Z.B. bei einem Notfall."

// ---------- Patient: The principle target of a particular Form Content is one patient ----------
// patient is not required because patient may not be known e.g. anonymized in case of research or name unknown in emergency
* item[+].linkId = "patient"
* item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-patient"
* item[=].text = "Patient"
* item[=].type = #group

* item[=].item[+].linkId = "patient.familyName"
* item[=].item[=].text = "Name"
* item[=].item[=].type = #string

* item[=].item[+].linkId = "patient.maidenName"
* item[=].item[=].text = "Ledigname"
* item[=].item[=].type = #string

* item[=].item[+].linkId = "patient.givenName"
* item[=].item[=].text = "Vorname"
* item[=].item[=].type = #string

* item[=].item[+].linkId = "patient.localPid"
* item[=].item[=].text = "Lokale Patienten-ID"
* item[=].item[=].type = #string

* item[=].item[+].linkId = "patient.birthDate"
* item[=].item[=].text = "Geburtsdatum"
* item[=].item[=].type = #date

* item[=].item[+].linkId = "patient.gender"
* item[=].item[=].text = "Geschlecht"
* item[=].item[=].type = #choice
* item[=].item[=].answerOption[+].valueCoding = AdministrativeGender#male "Männlich"
* item[=].item[=].answerOption[=].initialSelected = true
* item[=].item[=].answerOption[+].valueCoding = AdministrativeGender#female "Weiblich"
* item[=].item[=].answerOption[+].valueCoding = AdministrativeGender#other "Anderes"

* item[=].item[+].linkId = "patient.phone"
* item[=].item[=].text = "Telefon"
* item[=].item[=].type = #string

* item[=].item[+].linkId = "patient.email"
* item[=].item[=].text = "E-Mail"
* item[=].item[=].type = #string

* item[=].item[+].linkId = "patient.streetAddressLine"
* item[=].item[=].text = "Strasse, Hausnummer, Postfach etc."
* item[=].item[=].type = #string
* item[=].item[=].repeats = true

* item[=].item[+].linkId = "patient.postalCode"
* item[=].item[=].text = "PLZ"
* item[=].item[=].type = #string

* item[=].item[+].linkId = "patient.city"
* item[=].item[=].text = "Ort"
* item[=].item[=].type = #string

* item[=].item[+].linkId = "patient.country"
* item[=].item[=].text = "Land"
* item[=].item[=].type = #string

// ---------- orderer (Auftraggeber) ----------
* item[+].linkId = "orderer"
* item[=].text = "Auftraggeber"
* item[=].type = #group
* item[=].required = true

// ---------- Author: The person/organization responsible for Form Content ----------
* item[=].item[+].linkId = "orderer.author"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitionerrole"
* item[=].item[=].text = "Verantwortlicher"
* item[=].item[=].type = #group
* item[=].item[=].required = true

* item[=].item[=].item[+].linkId = "orderer.author.practitioner"
* item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitioner"
* item[=].item[=].item[=].text = "Verantwortliche Person"
* item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].required = true

* item[=].item[=].item[=].item[+].linkId = "orderer.author.practitioner.title"
* item[=].item[=].item[=].item[=].text = "Titel"
* item[=].item[=].item[=].item[=].type = #string

* item[=].item[=].item[=].item[+].linkId = "orderer.author.practitioner.familyName"
* item[=].item[=].item[=].item[=].text = "Name"
* item[=].item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].item[=].required = true

* item[=].item[=].item[=].item[+].linkId = "orderer.author.practitioner.givenName"
* item[=].item[=].item[=].item[=].text = "Vorname"
* item[=].item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].item[=].required = true

* item[=].item[=].item[=].item[+].linkId = "orderer.author.practitioner.gln"
* item[=].item[=].item[=].item[=].text = "GLN"
* item[=].item[=].item[=].item[=].type = #string

* item[=].item[=].item[=].item[+].linkId = "orderer.author.practitioner.phone"
* item[=].item[=].item[=].item[=].text = "Telefon"
* item[=].item[=].item[=].item[=].type = #string

* item[=].item[=].item[=].item[+].linkId = "orderer.author.practitioner.email"
* item[=].item[=].item[=].item[=].text = "E-Mail"
* item[=].item[=].item[=].item[=].type = #string

* item[=].item[=].item[+].linkId = "orderer.author.organization"
* item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-organization"
* item[=].item[=].item[=].text = "Verantwortliche Organisation"
* item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].required = true

* item[=].item[=].item[=].item[+].linkId = "orderer.author.organization.name"
* item[=].item[=].item[=].item[=].text = "Name der Organisation"
* item[=].item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].item[=].required = true

* item[=].item[=].item[=].item[+].linkId = "orderer.author.organization.streetAddressLine"
* item[=].item[=].item[=].item[=].text = "Strasse, Hausnummer, Postfach etc."
* item[=].item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].item[=].repeats = true

* item[=].item[=].item[=].item[+].linkId = "orderer.author.organization.postalCode"
* item[=].item[=].item[=].item[=].text = "PLZ"
* item[=].item[=].item[=].item[=].type = #string

* item[=].item[=].item[=].item[+].linkId = "orderer.author.organization.city"
* item[=].item[=].item[=].item[=].text = "Ort"
* item[=].item[=].item[=].item[=].type = #string

* item[=].item[=].item[=].item[+].linkId = "orderer.author.organization.country"
* item[=].item[=].item[=].item[=].text = "Land"
* item[=].item[=].item[=].item[=].type = #string

// ---------- Data Entry Person: The person who has typed/filled in the Form Content. ----------
* item[=].item[+].linkId = "orderer.dataenterer"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitionerrole"
* item[=].item[=].text = "Erfasser"
* item[=].item[=].type = #group

* item[=].item[=].item[+].linkId = "orderer.dataenterer.practitioner"
* item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitioner"
* item[=].item[=].item[=].text = "Erfassende Person"
* item[=].item[=].item[=].type = #group

* item[=].item[=].item[=].item[+].linkId = "orderer.dataenterer.practitioner.familyName"
* item[=].item[=].item[=].item[=].text = "Name"
* item[=].item[=].item[=].item[=].type = #string

* item[=].item[=].item[=].item[+].linkId = "orderer.dataenterer.practitioner.givenName"
* item[=].item[=].item[=].item[=].text = "Vorname"
* item[=].item[=].item[=].item[=].type = #string

* item[=].item[=].item[=].item[+].linkId = "orderer.dataenterer.practitioner.phone"
* item[=].item[=].item[=].item[=].text = "Telefon"
* item[=].item[=].item[=].item[=].type = #string

* item[=].item[=].item[=].item[+].linkId = "orderer.dataenterer.practitioner.email"
* item[=].item[=].item[=].item[=].text = "E-Mail"
* item[=].item[=].item[=].item[=].type = #string

// ---------- Request Receiver: Person/organization who receives the request ----------
* item[+].linkId = "receiverRequest"
* item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitionerrole"
* item[=].text = "Auftragsempfänger"
* item[=].type = #group

* item[=].item[+].linkId = "receiverRequest.practitioner"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitioner"
* item[=].item[=].text = "Auftragsempfangende Person"
* item[=].item[=].type = #group

* item[=].item[=].item[+].linkId = "receiverRequest.practitioner.title"
* item[=].item[=].item[=].text = "Titel"
* item[=].item[=].item[=].type = #string

* item[=].item[=].item[+].linkId = "receiverRequest.practitioner.familyName"
* item[=].item[=].item[=].text = "Name"
* item[=].item[=].item[=].type = #string

* item[=].item[=].item[+].linkId = "receiverRequest.practitioner.givenName"
* item[=].item[=].item[=].text = "Vorname"
* item[=].item[=].item[=].type = #string

* item[=].item[=].item[+].linkId = "receiverRequest.practitioner.gln"
* item[=].item[=].item[=].text = "GLN"
* item[=].item[=].item[=].type = #string

* item[=].item[=].item[+].linkId = "receiverRequest.practitioner.phone"
* item[=].item[=].item[=].text = "Telefon"
* item[=].item[=].item[=].type = #string

* item[=].item[=].item[+].linkId = "receiverRequest.practitioner.email"
* item[=].item[=].item[=].text = "E-Mail"
* item[=].item[=].item[=].type = #string

* item[=].item[+].linkId = "receiverRequest.organization"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-organization"
* item[=].item[=].text = "Auftragsempfangende Organisation"
* item[=].item[=].type = #group

* item[=].item[=].item[+].linkId = "receiverRequest.organization.name"
* item[=].item[=].item[=].text = "Name der Organisation"
* item[=].item[=].item[=].type = #string

* item[=].item[=].item[+].linkId = "receiverRequest.organization.streetAddressLine"
* item[=].item[=].item[=].text = "Strasse, Hausnummer, Postfach etc."
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].repeats = true

* item[=].item[=].item[+].linkId = "receiverRequest.organization.postalCode"
* item[=].item[=].item[=].text = "PLZ"
* item[=].item[=].item[=].type = #string

* item[=].item[=].item[+].linkId = "receiverRequest.organization.city"
* item[=].item[=].item[=].text = "Ort"
* item[=].item[=].item[=].type = #string

* item[=].item[=].item[+].linkId = "receiverRequest.organization.country"
* item[=].item[=].item[=].text = "Land"
* item[=].item[=].item[=].type = #string

// ---------- Copy Receiver ----------
* item[+].linkId = "receiverCopies"
* item[=].text = "Kopieempfänger"
* item[=].type = #group

* item[=].item[+].linkId = "receiverCopy"
* item[=].item[=].text = "Kopieempfangende Organisation oder Person"
* item[=].item[=].type = #group
* item[=].item[=].repeats = true

* item[=].item[=].item[+].linkId = "receiverCopy.organization.name"
* item[=].item[=].item[=].text = "Name der Organisation"
* item[=].item[=].item[=].type = #string

* item[=].item[=].item[+].linkId = "receiverCopy.title"
* item[=].item[=].item[=].text = "Titel"
* item[=].item[=].item[=].type = #string

* item[=].item[=].item[+].linkId = "receiverCopy.familyName"
* item[=].item[=].item[=].text = "Name"
* item[=].item[=].item[=].type = #string

* item[=].item[=].item[+].linkId = "receiverCopy.givenName"
* item[=].item[=].item[=].text = "Vorname"
* item[=].item[=].item[=].type = #string

* item[=].item[=].item[+].linkId = "receiverCopy.phone"
* item[=].item[=].item[=].text = "Telefon"
* item[=].item[=].item[=].type = #string

* item[=].item[=].item[+].linkId = "receiverCopy.email"
* item[=].item[=].item[=].text = "E-Mail"
* item[=].item[=].item[=].type = #string

* item[=].item[=].item[+].linkId = "receiverCopy.streetAddressLine"
* item[=].item[=].item[=].text = "Strasse, Hausnummer, Postfach etc."
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].repeats = true

* item[=].item[=].item[+].linkId = "receiverCopy.postalCode"
* item[=].item[=].item[=].text = "PLZ"
* item[=].item[=].item[=].type = #string

* item[=].item[=].item[+].linkId = "receiverCopy.city"
* item[=].item[=].item[=].text = "Ort"
* item[=].item[=].item[=].type = #string

* item[=].item[=].item[+].linkId = "receiverCopy.country"
* item[=].item[=].item[=].text = "Land"
* item[=].item[=].item[=].type = #string

/* ----- Beschreibung des Kerninhaltes der Rad-Order ----------------------
CH RAD-Order UNTERSTUETZT LOINC/RSNA PLAYBOOK WIE FOLGT: ANSELLE DER ITEMS [4] - [7] WIRD IN
servicerequest.code DER PLABOOK CODE ANGEGBEN. VOM QUESTIONNAIRE WIRD DAS NICHT UNTERSTÜTZT, DA NUR RELEVANT, WENN
ZWISCHEN SENDER UND EMPFÄNGER VEREINBART.

Was wird gewünscht (nur 1 Wert):
1.1: * #RequestforPrecedentReport "Request for precedent Reports only"                  
1.2: * #RequestforPrecedentReportandImages "Request for precedent Reports and Images"  
1.3: * #SecondOpinion "Second Opinion"                                                  
1.4: * #ImagingRequest "Imaging Request"                                                
1.5: * #ImagingRequestandIntervention "Imaging Request with Intervention" 
Kommentar: stimmt nicht mehr mit den Werten im ValueSet überein              
*/

* item[+].linkId = "requestedService"
* item[=].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-servicerequest"
* item[=].text = "Angeforderte Leistung"
* item[=].type = #group
* item[=].required = true

* item[=].item[+].linkId = "requestedService.service"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-servicerequest#ServiceRequest.category"
* item[=].item[=].text = "Leistung"                 
* item[=].item[=].required = true
* item[=].item[=].type = #choice
// TBD: VS auf Vollständigkeit überprüfen
// TBD: Übersetzungen im Questionnaire überprüfen
* item[=].item[=].answerOption[+].valueCoding = ChRadOrderRequestedService#RequestForPrecedentReport "Anforderung von früheren Berichten"
* item[=].item[=].answerOption[+].valueCoding = ChRadOrderRequestedService#RequestForPrecedentReportAndImages "Anfrage von früheren Berichten und Bildern"
* item[=].item[=].answerOption[+].valueCoding = ChRadOrderRequestedService#ImagingRequest "Bildgebungsanforderung"
* item[=].item[=].answerOption[+].valueCoding = ChRadOrderRequestedService#RadIntervention "Interventionelle Radiologie"
* item[=].item[=].answerOption[+].valueCoding = ChRadOrderRequestedService#SecondOpinion "Zweitmeinung"
* item[=].item[=].answerOption[+].valueCoding = ChRadOrderRequestedService#ImagingRequestWithIntervention "Bildgebungsanforderung mit Intervention"
* item[=].item[=].answerOption[+].valueCoding = ChRadOrderRequestedService#RemoteReporting "Fernbefundung"

/*------------------------------------------------------------------------
Fragestellung (mehrere Werte)
*/
* item[+].linkId = "reason"
* item[=].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-servicerequest"
* item[=].text = "Klinische Fragestellung"
* item[=].type = #group

* item[=].item[+].linkId = "reason.question"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-servicerequest#ServiceRequest.reasonCode.text"
* item[=].item[=].text = "Fragestellung"                
* item[=].item[=].type = #string
* item[=].item[=].repeats = true

/*----------------------------------------------------------------------
Gewünschter Radiologe: Noch offen, wie die Auswahlliste gemacht werden soll
*/
// TBD: Abbildung im ServiceRequest? 
* item[+].linkId = "desiredRadilologist"
* item[=].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-servicerequest"
* item[=].text = "Gewünschter Radiologe für die Befundung / für die Intervention"
* item[=].type = #group

* item[=].item[+].linkId = "desiredRadilologist.familyName"
// * item[=].item[=].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-servicerequest#ServiceRequest.???"
* item[=].item[=].text = "Name"
* item[=].item[=].type = #string

* item[=].item[+].linkId = "desiredRadilologist.givenName"
// * item[=].item[=].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-servicerequest#ServiceRequest.???"
* item[=].item[=].text = "Vorname"
* item[=].item[=].type = #string

/*-----------------------------------------------------------------------
Angabe der Untersuchung (nur 1 Wert):
        * RDLX#RID10321 "computed tomography"
        * RDLX#RID10312 "Magnetic resonance imaging"
        * RDLX#RID10326 "Ultrasound"
        * RDLX#RID10363 "dual energy xray absorptiometry"
        * RDLX#RID10357 "mammography"
        * RDLX#RID10341 "Pet-ct"
        * RDLX#RID10330 "nuclear medicine imaging"
        * RDLX#RID10337 "Positron emission tomography"
        * RDLX#RID10345 "projection radiography"
        * RDLX#RID10361 "Fluoroscopy"
        * RDLX#RID49583 "SPECT-CT"
        * RDLX#RID10311 "imaging modality"

        CT / MRI / US / dual energy absorptiomety, Mammografie, PET-CT /
        Nuklearmed. Bildgung / Positron emiss. Tomographie / Konventinelles RX, Fluoroskopie / SPECT-CT / Andere
*/

* item[+].linkId = "imgagingService"
* item[=].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-servicerequest"
* item[=].text = "Bildgebendes Verfahren"
* item[=].type = #group

* item[=].item[+].linkId = "imgagingService.type"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-servicerequest#ServiceRequest.code.coding:RdlxModType"
* item[=].item[=].text = "Art"                 
* item[=].item[=].type = #choice
// TBD: VS auf Vollständigkeit überprüfen
// TBD: Übersetzungen im Questionnaire überprüfen
* item[=].item[=].answerOption[+].valueCoding = RDLX#RID10321 "CT"
* item[=].item[=].answerOption[+].valueCoding = RDLX#RID10312 "MRI"
* item[=].item[=].answerOption[+].valueCoding = RDLX#RID10326 "US"
* item[=].item[=].answerOption[+].valueCoding = RDLX#RID10363 "dual energy absorptiomety"
* item[=].item[=].answerOption[+].valueCoding = RDLX#RID10357 "Mammografie"
* item[=].item[=].answerOption[+].valueCoding = RDLX#RID10341 "PET-CT"
* item[=].item[=].answerOption[+].valueCoding = RDLX#RID10330 "Nuklearmed. Bildgebung"
* item[=].item[=].answerOption[+].valueCoding = RDLX#RID10337 "Positron emiss. Tomographie"
* item[=].item[=].answerOption[+].valueCoding = RDLX#RID10345 "Konventinelles RX"
* item[=].item[=].answerOption[+].valueCoding = RDLX#RID10361 "Fluoroskopie"
* item[=].item[=].answerOption[+].valueCoding = RDLX#RID49583 "SPECT-CT"
* item[=].item[=].answerOption[+].valueCoding = RDLX#RID10311 "Andere"

/*----------------------------------------------------------------------
Art der Intervention (mehrere Werte)
*/
// TBD: Abbildung im ServiceRequest?
* item[+].linkId = "intervention"
* item[=].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-servicerequest"
* item[=].text = "Intervention"
* item[=].type = #group

* item[=].item[+].linkId = "intervention.type"
// * item[=].item[=].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-servicerequest#ServiceRequest.???"
* item[=].item[=].text = "Art"
* item[=].item[=].type = #string
* item[=].item[=].repeats = true

/*----------------------------------------------------------------------*-- 
Darstellung der Order Details
                * orderDetail[RadOrderImagingRegion] from VsRadOrderImagingRegion       
                * orderDetail[RadOrderImagingFocus] from VsRadOrderImagingFocus         
                * orderDetail[RadOrderLaterality] from VsRadOrderLaterality                 
                * orderDetail[RadOrderViewType] from VsRadOrderViewType                    
                * orderDetail[RadOrderManeuverType] from VsRadOrderManeuverType             
*/

* item[+].linkId = "orderdetails"
* item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-rad-order-servicerequest"
* item[=].text = "Weitere Angaben zur Bildgebung"
* item[=].type = #group

* item[=].item[+].linkId = "orderdetails.region"      // n Einträge
* item[=].item[=].text = "Region"
* item[=].item[=].type = #string
* item[=].item[=].repeats = true

* item[=].item[+].linkId = "orderdetails.region"      // n Einträge
* item[=].item[=].text = "Fokus"
* item[=].item[=].type = #string
* item[=].item[=].repeats = true

* item[=].item[+].linkId = "orderdetails.laterality" // 1 Eintrag
* item[=].item[=].text = "Seitenangabe"
* item[=].item[=].type = #string

* item[=].item[+].linkId = "orderdetails.manoever"   // n Einträge
* item[=].item[=].text = "Maneuver"
* item[=].item[=].type = #string
* item[=].item[=].repeats = true

/*----------------------------------------------------------------------
Darstellung der Problemliste
*/

* item[+].linkId = "supplementaryinfo"
* item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-rad-order-servicerequest"
* item[=].text = "Problem- / Diagnoseliste"
* item[=].type = #group

* item[=].item[+].linkId = "supplementaryinfo"  
* item[=].item[=].text = "Problem / Diagnose"
* item[=].item[=].type = #string
* item[=].item[=].repeats = true


/*----------------------------------------------------------------------
Darstellung Caveats   
    BloodCoag 0..1 and
    RenalInsuff 0..1 and
    Claustrophobia 0..1 and
    BodyPierc 0.. and
    Device 0..* and
    Hyperthyr 0..1 and
    Diabetes 0..1 and
    Gravida 0..1 and  
    ContrastAllerg 0..1 and   
    DrugPrescr 0..*   

 */

* item[+].linkId = "caveats"  
* item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-rad-order-servicerequest"
* item[=].text = "Caveats"
* item[=].type = #group

* item[=].item[+].linkId = "caveat.bloodcoag"     
* item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-rad-order-servicerequest"
* item[=].item[=].text = "Beinträchtigre Blutgerinnung"   
* item[=].item[=].type = #boolean

* item[=].item[+].linkId = "caveat.renalinsuff"     
* item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-rad-order-servicerequest"
* item[=].item[=].text = "Niereninsuffizienz"   
* item[=].item[=].type = #boolean
* item[=].item[=].repeats = true

* item[=].item[=].item[+].linkId = "caveat.renalinsuff"     
* item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-orf-caveat-observation"
* item[=].item[=].item[=].text = "Bei Niereninsuffizienz entweder Creatininclearance oder Creatinin"
* item[=].item[=].item[=].type = #group

* item[=].item[=].item[=].item[+].linkId = "caveat.renalinsuff.creatclearance"  
* item[=].item[=].item[=].item[=].text = "Niereninsuffizienz"
* item[=].item[=].item[=].item[=].type = #boolean

* item[=].item[=].item[=].item[+].linkId = "caveat.renalinsuff.creatclearance"  
* item[=].item[=].item[=].item[=].text = "Creatinin Clearance"
* item[=].item[=].item[=].item[=].type = #quantity

* item[=].item[=].item[=].item[=].item[+].linkId = "caveat.renalinsuff.creatclearance.date"  
* item[=].item[=].item[=].item[=].item[=].text = "Datum der Bestimmung"
* item[=].item[=].item[=].item[=].item[=].type = #dateTime

* item[=].item[=].item[=].item[+].linkId = "caveat.renalinsuff.creat"  
* item[=].item[=].item[=].item[=].text = "Creatinin"
* item[=].item[=].item[=].item[=].type = #quantity

* item[=].item[=].item[=].item[=].item[+].linkId = "scaveat.renalinsuff.creat.date"  
* item[=].item[=].item[=].item[=].item[=].text = "Datum der Bestimmung"
* item[=].item[=].item[=].item[=].item[=].type = #dateTime

* item[=].item[+].linkId = "caveat.claustrophobia"     
* item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-rad-order-servicerequest"
* item[=].item[=].text = "Klaustrophobie"   
* item[=].item[=].type = #boolean

* item[=].item[+].linkId = "caveat.bodypierc"     
* item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-rad-order-servicerequest"
* item[=].item[=].text = "Bodypiercing"   
* item[=].item[=].type = #boolean

* item[=].item[+].linkId = "caveat.device"     
* item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-rad-order-servicerequest"
* item[=].item[=].text = "Device (Herzschrittmacher, Herzklappenersatz, Insulinpumpe etc.)"   
* item[=].item[=].type = #string
* item[=].item[=].repeats = true

* item[=].item[+].linkId = "caveat.hyperthyr"     
* item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-rad-order-servicerequest"
* item[=].item[=].text = "Hyperthyreose"   
* item[=].item[=].type = #boolean

* item[=].item[+].linkId = "caveat.diabetes"     
* item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-rad-order-servicerequest"
* item[=].item[=].text = "Diabetes"   
* item[=].item[=].type = #boolean

* item[=].item[+].linkId = "caveat.gravida"     
* item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-rad-order-servicerequest"
* item[=].item[=].text = "Schwangerschaft"   
* item[=].item[=].type = #boolean

* item[=].item[+].linkId = "caveat.contrastallerg"     
* item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-rad-order-servicerequest"
* item[=].item[=].text = "Kontrastmittelallergie"   
* item[=].item[=].type = #boolean

* item[=].item[+].linkId = "caveat.drugprescr"     
* item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-rad-order-servicerequest"
* item[=].item[=].text = "Relevante Medikamente, z. B. Metformin"   
* item[=].item[=].type = #string              // noch nicht definiert wie zu machen
* item[=].item[=].repeats = true

/*-------------------------------------------------------------------------
Darstellung der 4 Consents:
        [PrivacyConsent] only Reference(ChOrfConsent)
        TreatmentConsent] only Reference(ChOrfConsent)
        [RearchConsent] only Reference(ChOrfConsent)
        [ADCD]: Advanced directive
*/

* item[+].linkId = "consents"  
* item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-rad-order-servicerequest"
* item[=].text = "Einverständniserklärungen"
* item[=].type = #group

* item[=].item[+].linkId = "consents.treatmentconsent"      
* item[=].item[=].text = "Einverständnis des Patienten zur Behandlung"
* item[=].item[=].type = #string

* item[=].item[+].linkId = "consents.privacyconsent"      
* item[=].item[=].text = "Einverständnis des Patienten zum Datenschutz"
* item[=].item[=].type = #string

* item[=].item[+].linkId = "consents.researchconsent"      
* item[=].item[=].text = "Einverständnis des Patienten zur Forschung"
* item[=].item[=].type = #string

* item[=].item[+].linkId = "consents.researchconsent"     
* item[=].item[=].text = "Patientenverfügung"
* item[=].item[=].type = #string

/*------------------------------------------------------------------------
Darstellung der 4 Arten von Kostentägern  (Noch offen: Wie efrassen; )
        * ChRORFInsuranceType#Accident "According UVG"
        * ChRORFInsuranceType#DisorderKVG "According to KVG"
        * ChRORFInsuranceType#DisorderVVG "According to VVG"
        * ChRORFInsuranceType#OtherVVG "Other acording to VVG"
*/

* item[+].linkId = "coverage"
* item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-rad-order-coverage"
* item[=].text = "Kostenträger"
* item[=].type = #group

* item[=].item[+].linkId = "insurance.uvg"
* item[=].item[=].text = "Unfallversicherung"
* item[=].item[=].type = #string

* item[=].item[+].linkId = "insurance.kvg"
* item[=].item[=].text = "Grundversicherung (KVG)"
* item[=].item[=].type = #string

* item[=].item[+].linkId = "insurance.vvg"
* item[=].item[=].text = "Zusatzversicherung"
* item[=].item[=].type = #string

* item[=].item[+].linkId = "insurance.vvgother"
* item[=].item[=].text = "Andere"
* item[=].item[=].type = #string

/*
---- 5 -----------------------------------------------------------------------
Angaben zu Bilder bzw. allfällige Vorbilder und Reports, die mitgegeben werden 
mittels CH ORF ImagingStudy Resource.
*/

* item[+].linkId = "precedentresults"
* item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-rad-order-servicerequest"
* item[=].text = "Vorherige Untersuchungsresultate"
* item[=].type = #group

* item[=].item[+].linkId = "precedent.resultID"                     // n Einträge
* item[=].item[=].text = "Vorheriges Untersuchungsresultat"          // (Abbildung und Anzeige noch nicht definiert)
* item[=].item[=].type = #string
* item[=].item[=].repeats = true
