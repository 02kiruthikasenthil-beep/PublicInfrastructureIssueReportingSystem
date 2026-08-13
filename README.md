# AI Public Infrastructure Issue Reporting — Review I MVP

This repository is the **Day 1–11 / Review-I** version of the project.

## Scope completed
- Problem statement and requirements
- Architecture + workflow documentation
- ER/data model and database schema
- Spring Boot backend scaffold
- React + Vite frontend scaffold
- PostgreSQL Docker setup
- JWT registration/login
- Citizen issue reporting
- Issue listing/details
- Basic issue status update for officer/admin
- Seeded categories and departments
- Basic API error handling and validation
- Basic backend tests

## Intentionally deferred
AI classification, advanced admin management, notifications, production deployment,
CI/CD, cloud hosting, advanced security, and full test coverage belong to later phases.

## Stack
- Java 17 + Spring Boot 3.4
- Spring Web, JPA, Validation, Security
- PostgreSQL 16
- React 18 + Vite
- JWT (jjwt)
- Docker Compose

## Run

### 1. Start PostgreSQL
```bash
docker compose up -d db
```

### 2. Run backend
```bash
cd backend
./mvnw spring-boot:run
```
Windows:
```powershell
mvnw.cmd spring-boot:run
```

### 3. Run frontend
```bash
cd frontend
npm install
npm run dev
```

Open http://localhost:5173

Backend API: http://localhost:8080/api

### Demo accounts
Seed data does not create passwords. Register a new user from the UI.

## Review-I demo flow
1. Register as a citizen.
2. Log in.
3. Report a road/pothole/water/streetlight issue.
4. Open My Issues.
5. Open the issue details.
6. Verify the issue is stored in PostgreSQL.
7. For officer/admin testing, register another user and manually change role in DB:
```sql
UPDATE users SET role = 'OFFICER' WHERE email = 'officer@example.com';
```

## Git milestone suggestion
For the Day 1–11 target, make at least 6 meaningful commits, for example:
1. `docs: finalize problem statement`
2. `chore: initialize spring boot and react projects`
3. `docs: add architecture and database design`
4. `feat: add issue domain and repositories`
5. `feat: add jwt authentication`
6. `feat: add review-i issue reporting mvp`
