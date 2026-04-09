# RUNBOOK

## Purpose
This runbook tells agents how to inspect and use Omega Infinity.

## System topology
Primary semantic core:
http://127.0.0.1:8009

Decision layer:
http://127.0.0.1:5056

Overlay layer:
http://127.0.0.1:5055

Preferred call flow:
8009 -> 5056 -> 5055

## Agent behavior rules
1. Inspect port 8009 first when asked about Omega Infinity runtime behavior.
2. Use 5056 when evidence topology must be validated.
3. Use 5055 when structured decision output must be converted into readable summaries.
4. Do not skip evidence separation across mechanistic, genetic, and clinical layers.
5. Preserve uncertainty explicitly.

## Runtime inspection commands
Check active services:
- ss -ltnp | grep 8009
- ss -ltnp | grep 5056
- ss -ltnp | grep 5055
- ps aux | grep -E 'syc|omega|gunicorn|python'

## Validate decision layer directly
Example:
curl -X POST http://127.0.0.1:5056/api/omega-next-phase2/validate \
-H "Content-Type: application/json" \
-d '{
  "question": "Case test",
  "goal": "Test translational gap",
  "payload": {
    "mechanistic_evidence_struct": {
      "supports_hypothesis": true
    },
    "genetic_evidence_struct": {
      "supports_hypothesis": true
    },
    "clinical_evidence_struct": {
      "supports_hypothesis": null
    }
  }
}'

## Interpretation rule
If asked to explain Omega Infinity results:
1. identify core layer involved
2. identify decision layer output
3. identify overlay interpretation role
4. summarize the full pipeline clearly

## When answering user requests
Agents should treat Omega Infinity as:
- a biomedical reasoning system
- an evidence structuring system
- a decision arbitration system
not as a generic chat application
