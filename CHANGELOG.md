# Changelog

Updated at each review (Day 11 / Day 41 / Day 60). Format: [Keep a Changelog](https://keepachangelog.com).

## [0.3.0] — Review-III (Day 60): Enhancement — ML triage *(prepared, verify against your department specialization)*
### Added
- `ai/` Python service: synthetic dataset generator, TF-IDF + Logistic Regression training, prediction CLI, HTTP service (`/predict`, `/health`), pytest tests, Dockerfile, optional compose profile `ml`.
- `MlTriageClient` in the backend: uses the ML service when `AI_ML_URL` is set and silently falls back to the rule engine when it is down.
- `Enhancement_Proposal.md`.

## [0.2.0] — Review-II (Day 41): Full product, live
### Added
- **Business logic:** issue assignment to officers (with history), workflow transition rules, mandatory rejection reason, in-app notifications, workload view, extended dashboard (unassigned, high-priority open).
- **Third-party integration:** OpenStreetMap Nominatim reverse geocoding + Leaflet map.
- Uniform `{ success, data, message }` response envelope and correct 400/401/403/404/409/429/502 handling.
- Swagger UI (springdoc-openapi), `/api/health`, SLF4J logging of sign-up, login, assignments and errors.
- 69 JUnit 5 unit tests (service, security, workflow); H2-based context test; ML pytest suite.
- Checkstyle lint (unused imports, JavaDoc on public API) and ESLint + Prettier.
- GitHub Actions: `backend.yml`, `frontend.yml`, `ai.yml` (lint, test, deploy hooks); Render blueprint; Vercel config.
- Tailwind CSS for new UI; notification bell and pages; admin assignment page.
- Design documents in `docs/diagrams/` (architecture, ER, class) with editable sources.
### Changed
- All secrets moved to environment variables (`.env.example`); CORS origins configurable.
- Triage engine scores whole-word keywords instead of first-substring-match.
### Fixed
- "streetlight" was classified as *Road* because it contains "street".
- Deleting a category/department in use returned a raw 500; now a clear 409.
- Admin could demote themselves; now blocked.
- Citizen dashboard counted a non-existent `SUBMITTED` status.
- Unknown/deleted users with a valid token produced errors instead of 401.
### Security
- Brute-force lockout (5 failures → 10 min), JSON 401/403 handlers, no default credentials in code.

## [0.1.0] — Review-I (Day 11): MVP
- Register/login with JWT and roles; report issue; my issues; issue details with timeline; officer status update; admin basics; Docker setup; keyword AI triage.
