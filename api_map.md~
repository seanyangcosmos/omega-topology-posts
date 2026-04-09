# API MAP

## SYC Core Semantic Layer
Base: http://127.0.0.1:8009

Purpose:
Primary semantic reasoning entrypoint of Omega Infinity.

Role:
Coordinates structured reasoning across:
- evidence engine
- decision engine
- overlay engine
- V12 Medical Research
- V12 Bio Investment

This service should be treated as the central orchestration interface.

Agents should:
1. query this service first
2. inspect runtime behavior here
3. treat this as the system root interface


## omega-next phase2
Base: http://127.0.0.1:5056

Endpoint:
POST /api/omega-next-phase2/validate

Purpose:
Validate a biomedical evidence topology and produce a structured decision output.

Expected input:
- question
- goal
- payload.mechanistic_evidence_struct
- payload.genetic_evidence_struct
- payload.clinical_evidence_struct

Role inside system:
Decision arbitration layer

Use when:
cross-evidence structure must be evaluated


## phase2 overlay
Base: http://127.0.0.1:5055

Purpose:
Interpret structured decision output into human-readable strategic summaries.

Role inside system:
Output interpretation layer

Use when:
structured decision objects must be converted into narrative insight


## V12 Medical Research

Role:
Research navigation interface for mechanistic, genetic, and clinical signal mapping.

Supports:
- hypothesis framing
- pathway exploration
- signal alignment inspection
- translational gap detection


## V12 Bio Investment

Role:
Scientific diligence interface for evaluating biomedical opportunities.

Supports:
- mechanism plausibility assessment
- genetic validation strength
- clinical signal maturity
- translation risk classification


## SYSTEM CALL ORDER

Preferred execution flow:

SYC core (8009)
→ decision layer (5056)
→ overlay layer (5055)

Agents should avoid calling lower layers first unless explicitly instructed.
