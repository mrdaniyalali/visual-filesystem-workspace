# Tech Stack Decision

## Desktop

Tauri

Why:
- Lightweight
- Small binary
- Native filesystem access
- Rust backend
- React frontend

Rejected:
- Electron (larger memory footprint)

---

## Frontend

React
TypeScript
Vite

Why:
- Mature ecosystem
- Excellent canvas libraries
- Large community

---

## Canvas

tldraw primitives + custom rendering

---

## Graph

React Flow

---

## Search

Rust service

---

## Metadata

JSON (v1)

Future:
SQLite for indexing only (NOT user data)

