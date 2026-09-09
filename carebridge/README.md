# CareBridge — Mental Health Service Coordination

A proof-of-concept web application demonstrating how SMART-on-FHIR interoperability can improve referral and transfer-of-care workflows between community mental-health services.

## Project Overview

CareBridge was developed as a COMP3820 team project. The application focused on a depression-care referral pathway between two simulated community mental-health clinics.

The system provides separate interfaces for clinicians and consumers and uses synthetic FHIR data. :contentReference[oaicite:0]{index=0}

## Key Features

- SMART-on-FHIR authentication using OAuth 2.0
- Separate clinician and consumer interfaces
- Synthetic patient data
- Patient record viewing
- Transfer-of-care referrals
- Referral status tracking
- Patient consent management
- Appointment tracking
- FHIR R4 API integration
- Error handling and validation

## Technology Stack

- React 19
- TypeScript 5.8
- Vite 7
- fhirclient.js
- SMART-on-FHIR
- OAuth 2.0
- FHIR R4
- HAPI FHIR
- React Router
- CSS Modules
- Vitest
- React Testing Library

The frontend uses React, TypeScript and Vite, with fhirclient.js handling SMART-on-FHIR functionality. :contentReference[oaicite:1]{index=1}

## Architecture

The application uses a client-side architecture consisting of:

1. React frontend
2. SMART Health IT Launcher for authentication
3. HAPI FHIR public test server for synthetic clinical data

The prototype communicates directly with the FHIR server without a custom backend. :contentReference[oaicite:2]{index=2}

## FHIR Resources

The project implemented and worked with:

- `Patient`
- `Condition`
- `Task`
- `Consent`
- `Appointment`
- `Organization`
- `Practitioner`

`Task` resources were used to represent transfer-of-care requests, while `Consent` resources represented permission for data sharing. :contentReference[oaicite:3]{index=3}

## Testing

Testing included automated unit/component testing and manual browser-based testing.

Testing covered:

- SMART authentication
- Consumer/User View
- Patient table
- FHIR API requests
- Clinical View
- Transfer workflows
- HAPI FHIR integration

The project used Vitest and React Testing Library for automated testing. :contentReference[oaicite:4]{index=4}

## My Contribution

**Venkatesh Athikulam Muthusamy**

- Developed the Consumer/User View
- Implemented application navigation
- Implemented appointment tracking
- Contributed to testing and debugging
- Contributed to documentation and overall project development

The final report documents these individual contributions. :contentReference[oaicite:5]{index=5}

## Project Outcomes

The prototype successfully demonstrated secure clinician and consumer login, shared patient information, transfer-of-care workflows and referral tracking between simulated clinics. :contentReference[oaicite:6]{index=6}

## Limitations

This was an academic proof of concept using synthetic data.

The consumer portal used mock appointment/referral data, and the system did not include production-level server-side authorization, audit logging or a dedicated FHIR server. :contentReference[oaicite:7]{index=7}

## Future Improvements

Potential future improvements include:

- Dedicated/private FHIR server
- Backend service layer
- Audit logging
- Stronger server-side authorization
- Refresh-token support
- Real FHIR Appointment resources
- Additional mental-health pathways
- Cloud deployment and scalability

## Project Files

- `CareBridge_final_report.docx` — Detailed project report
- `CareBridge_presentation.pptx` — Project presentation

## Project Team

**COMP3820 — Team Jets**

- Oda Bang-Olsen
- Venkatesh Athikulam Muthusamy
- Hanna Jacobsen
