# API Documentation — Review I

Base URL: `http://localhost:8080/api`

## Auth
### POST `/auth/register`
```json
{"name":"Jane","email":"jane@example.com","password":"password123"}
```

### POST `/auth/login`
```json
{"email":"jane@example.com","password":"password123"}
```

## Reference
- GET `/categories`
- GET `/departments`

## Issues
Authenticated:
- GET `/issues/mine`
- GET `/issues/{id}`
- POST `/issues`

Officer/admin:
- GET `/issues`
- PATCH `/issues/{id}/status`

### Create issue
```json
{
  "title":"Large pothole",
  "description":"Deep pothole near the bus stop.",
  "categoryId":1,
  "departmentId":1,
  "address":"Main Road",
  "latitude":12.9716,
  "longitude":77.5946
}
```
