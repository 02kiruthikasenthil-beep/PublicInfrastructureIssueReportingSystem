# System Workflow

```mermaid
sequenceDiagram
    participant C as Citizen
    participant F as React
    participant B as Spring Boot
    participant D as PostgreSQL

    C->>F: Register/Login
    F->>B: POST /api/auth/*
    B->>D: Read/Write user
    B-->>F: JWT

    C->>F: Submit issue
    F->>B: POST /api/issues
    B->>D: Save issue + status history
    B-->>F: Issue response

    C->>F: View My Issues
    F->>B: GET /api/issues/mine
    B->>D: Query issues
    B-->>F: Issue list
