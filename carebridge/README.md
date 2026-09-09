# CareBridge — Mental Health Service Coordination

## 📌 Project Overview

CareBridge is a team-developed proof-of-concept web application demonstrating how healthcare interoperability can support mental health referral and transfer-of-care workflows.

The project uses **SMART-on-FHIR** and **FHIR R4** to demonstrate how patient information, appointments, referrals and consent can be managed across healthcare services.

---

## 🎯 Project Objectives

The main objectives were to:

- Support mental health service coordination
- Demonstrate healthcare interoperability using FHIR
- Support referral and transfer-of-care workflows
- Provide different user interfaces for healthcare and consumer users
- Demonstrate secure authentication using SMART-on-FHIR

---

## 🏗️ Architecture

The application uses a client-side architecture built around:

- React frontend
- TypeScript
- SMART Health IT Launcher
- SMART-on-FHIR authentication
- HAPI FHIR test server

The application communicates with the FHIR server through FHIR APIs.

---

## 🧩 FHIR Resources

The project worked with several FHIR R4 resources, including:

- Patient
- Condition
- Task
- Consent
- Appointment
- Organization
- Practitioner

For example:

**Task** was used to support transfer-of-care workflows, while **Consent** was used to represent permission for sharing patient information.

---

## 💻 Technology Stack

### Frontend

- React 19
- TypeScript 5.8
- Vite 7
- React Router
- CSS Modules

### Healthcare Interoperability

- SMART-on-FHIR
- FHIR R4
- fhirclient.js
- OAuth 2.0
- HAPI FHIR

### Testing

- Vitest
- React Testing Library

---

## 👨‍💻 My Contribution

As part of the project team, my documented contributions included:

- Developed the Consumer/User View
- Implemented application navigation
- Implemented appointment tracking functionality
- Contributed to testing and debugging
- Contributed to project documentation and overall development

---

## 🔄 Key Features

### Consumer/User View

Provides a user-facing interface for viewing relevant referral and appointment information.

### Appointment Tracking

Implemented functionality for tracking appointment information within the application.

### Referral & Transfer Workflows

The application demonstrates workflows for coordinating patient transfers between mental health services.

### SMART-on-FHIR Authentication

The application uses SMART-on-FHIR authentication to demonstrate secure access to healthcare information.

### FHIR Integration

The system interacts with a HAPI FHIR test server using FHIR R4 resources.

---

## 🧪 Testing

Testing covered several important application areas, including:

- SMART authentication
- Consumer/User View
- Patient information display
- FHIR API requests
- Clinical View
- Transfer-of-care workflows
- HAPI FHIR integration

Testing and debugging were performed throughout development to identify and resolve application issues.

---

## 📈 Project Outcome

CareBridge demonstrated how healthcare interoperability standards can be used to support mental health service coordination.

The project provided practical experience with:

- Healthcare data interoperability
- FHIR APIs
- SMART-on-FHIR authentication
- React and TypeScript development
- Application testing
- Team-based software development

---

## ⚠️ Limitations

CareBridge was developed as an academic proof of concept using synthetic/test data.

The project did not represent a production healthcare system.

Potential production-level improvements would include:

- Dedicated/private FHIR infrastructure
- Stronger server-side authorisation
- Audit logging
- Backend service layer
- Refresh-token support
- Real FHIR Appointment resources
- Additional referral pathways
- Improved scalability

---

## 🚀 Future Improvements

Future development could include:

- Additional mental health referral pathways
- Production-ready authentication and authorisation
- Dedicated FHIR infrastructure
- Comprehensive audit logging
- Backend service integration
- Additional healthcare workflows
- Improved scalability and deployment architecture

---

## 📁 Project Files

```text
carebridge/
│
├── README.md
├── CareBridge_final_report.docx
└── CareBridge_presentation.pptx
