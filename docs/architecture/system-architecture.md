# System Architecture

```mermaid
flowchart LR
    UI[React + Vite] -->|HTTP/JSON + JWT| API[Spring Boot REST API]
    API --> SEC[Spring Security + JWT]
    API --> SVC[Service Layer]
    SVC --> JPA[Spring Data JPA]
    JPA --> DB[(PostgreSQL)]
    API -. future .-> AI[AI Classifier]
```

## Layers
- Controller: HTTP/API boundary
- Service: business rules
- Repository: persistence
- Entity: domain model
- DTO: request/response contracts
- Security: JWT authentication
- Exception: consistent API errors
