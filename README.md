# CareBridge — Integrated Platform for Mental Health Service Coordination

A university proof-of-concept web application demonstrating how SMART-on-FHIR interoperability can support referral and transfer-of-care workflows between community mental-health services.

## Overview

CareBridge was developed as a team project for COMP3820. The prototype focused on a depression-care referral pathway between two simulated community mental-health clinics.

The application provides separate experiences for clinicians and consumers, using synthetic FHIR data and standards-based APIs.

## Key Features

- SMART-on-FHIR authentication using OAuth 2.0
- Role-based clinician and consumer interfaces
- Retrieval and display of synthetic patient information
- Transfer-of-care referrals using FHIR `Task` resources
- Patient consent using FHIR `Consent` resources
- Appointment and referral tracking in the consumer portal
- FHIR R4 integration with the HAPI FHIR public test server
- Error handling and validation for FHIR operations
- Automated component/API testing using Vitest and React Testing Library

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

## Architecture

The prototype uses a browser-based client-side architecture:

1. React frontend
2. SMART Health IT Launcher for authentication/authorization
3. HAPI FHIR R4 public test server for synthetic clinical resources

The project deliberately avoided real patient data and was designed as a proof of concept rather than a production clinical system.

## FHIR Resources

The project used standard FHIR resources including:

- `Patient` — synthetic patient demographics
- `Condition` — depression-related clinical information
- `Task` — transfer-of-care requests
- `Consent` — permission for data sharing
- `Appointment` — consumer appointment information
- `Organization` / `Practitioner` — participating clinics and clinicians

## Testing

Testing combined automated unit/component tests with manual browser-based workflow testing.

The report documents tests for:

- SMART login flows
- Consumer/User View
- Patient table
- FHIR API request construction
- Clinical View and transfer actions
- Integration with the HAPI FHIR server

## My Contribution

**Venkatesh Athikulam Muthusamy**

- Developed the Consumer/User View
- Implemented navigation between application views
- Implemented appointment tracking functionality
- Contributed to documentation, testing and debugging
- Worked as part of the team on the overall CareBridge proof of concept

## Important Project Notes

This was an academic proof of concept using synthetic data. The consumer portal included mock appointment/referral data where corresponding FHIR resources were not fully implemented.

The project identified production improvements including a dedicated FHIR server, a backend service layer, stronger server-side authorization, audit logging, refresh-token handling and expanded clinical pathways.

## Files

- `CareBridge_final_report.docx` — Detailed project report
- `CareBridge_presentation.pptx` — Project presentation

## Project Team

COMP3820 — Team Jets

- Oda Bang-Olsen
- Venkatesh Athikulam Muthusamy
- Hanna Jacobsen

