# Problem Statement

## 1. Title
**CivicFix — AI-assisted Public Infrastructure Issue Reporting and Resolution System**

## 2. Domain
Civic Tech / Smart City governance (Community services).

## 3. Who is the user? (2-3 user types, with roles)
| User | Role | What they do |
|---|---|---|
| **Citizen** | `CITIZEN` | Reports problems (pothole, dead streetlight, blocked drain, garbage), pins the location on a map, tracks progress and receives notifications. |
| **Field Officer** | `OFFICER` | Works the issues assigned to them, moves them through the workflow (review → in progress → resolved / rejected with a reason). |
| **Administrator** | `ADMIN` | Assigns issues to officers by workload, manages users and roles, categories and departments, and watches the dashboard. |

## 4. What problem are we solving? (3-5 sentences, real-life example)
Citizens usually report a broken road or streetlight by phone or in person, get no ticket number, and never learn whether anyone acted. Municipal staff receive complaints in mixed formats, cannot tell which are dangerous, and have no record of who is responsible. For example, a citizen sees a deep pothole outside a school; today the complaint disappears, and a week later a cyclist is injured. CivicFix gives every complaint a tracked ticket, suggests its category, department and priority automatically, routes it to a named officer and notifies the citizen at every step.

## 5. Proposed Solution (what the application will do, feature-wise)
- **Accounts and roles:** register/login with JWT, three roles, role-based screens and API permissions, brute-force lockout.
- **Report an issue:** title, description, category, department, priority, address, GPS location; "use my location" fills the address through OpenStreetMap; map preview.
- **AI triage:** while typing, the app suggests category, department and priority with the reasons (rule engine; optional trained ML model with automatic fallback).
- **Workflow with rules:** `REPORTED → IN_REVIEW → IN_PROGRESS → RESOLVED`, `REJECTED` needs a written reason; illegal jumps are refused; every change is written to a timeline.
- **Assignment:** admin assigns/reassigns an issue to an officer (workload shown); only the assigned officer (or an admin) may change its status.
- **Notifications:** in-app bell with unread count when an issue is assigned or its status changes.
- **Administration:** dashboard counters (including unassigned and high-priority open issues), user role management, category and department management with safe delete.
- **Operations:** health endpoint, structured logging, Swagger API docs, CI/CD and cloud deployment.

## 6. Core Entities / Database Tables (list all, minimum 5)
1. `users` — citizens, officers, admins (bcrypt password hash).
2. `issue_categories` — kinds of problems.
3. `departments` — municipal departments.
4. `locations` — address plus GPS coordinates (one-to-one with an issue).
5. `issues` — the reported problem, status and priority.
6. `status_history` — timeline entry per change.
7. `issue_assignments` — which officer handles which issue (history kept).
8. `notifications` — in-app messages per user.

See `docs/diagrams/er-diagram.png`.

## 7. User Roles & Permissions (minimum 2 distinct roles, e.g. Admin & User)
| Action | Citizen | Officer | Admin |
|---|:-:|:-:|:-:|
| Register / login | ✔ | ✔ | ✔ |
| Report an issue, see own issues | ✔ | – | – |
| See all issues | – | ✔ | ✔ |
| View issue details | own only | ✔ | ✔ |
| Change status | – | assigned issues only | any issue |
| Assign / reassign issues | – | – | ✔ |
| Manage users, categories, departments, dashboard | – | – | ✔ |
| Read own notifications | ✔ | ✔ | ✔ |

## 8. Success Criteria (e.g. 'a user should be able to book an appointment in under 1 minute')
- A citizen can register and report an issue with a location in **under 2 minutes**.
- The AI suggestion appears **within 2 seconds** and correctly routes obvious cases (pothole → Roads, streetlight → Electrical).
- An admin can assign an issue to an officer in **3 clicks**, and the citizen is notified immediately.
- No officer can change an issue that is not assigned to them; no citizen can read another citizen's issue.
- All unit tests pass in CI; the app is reachable on a public URL.

## 9. Out of Scope (clearly list what you will NOT build, to avoid over-commitment)
- Native mobile apps; payment or billing; SMS/WhatsApp gateways.
- Photo upload and image classification (future enhancement).
- Multi-city / multi-tenant support and government single sign-on.
- Real-time WebSocket push (notifications are fetched by polling).
- Email verification and password reset by email.

## 10. Chosen Track: Java (Spring Boot) / Python (Django or FastAPI)
**Java (Spring Boot 3, Java 17)** with React, PostgreSQL, JUnit 5 and GitHub Actions. A small Python service (scikit-learn) is used only for the optional ML triage enhancement.
