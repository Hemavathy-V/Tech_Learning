# Small Full-Stack Project Structure

This workspace is organized as a simple full-stack starter with separate areas for API contracts, backend code, database assets, and frontend code.

```text
api/
backend/
  src/
    config/
    controllers/
    middleware/
    models/
    routes/
    services/
database/
  migrations/
  seeds/
frontend/
  src/
    assets/
    components/
    pages/
    styles/
```

Notes:
- `api/` is for OpenAPI specs, Postman collections, or request examples.
- `backend/` is for server-side application code.
- `database/` is for SQL, migrations, and seed data.
- `frontend/` is for the client application.
- `fronted/` exists in the workspace already, but `frontend/` is the correct folder name for new work.
