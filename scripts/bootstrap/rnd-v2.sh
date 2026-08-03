#!/usr/bin/env bash
set -euo pipefail

echo "==> Installing R&D Pack v2..."

mkdir -p docs/competitor-analysis
mkdir -p docs/adr

###############################################################################
# TECH STACK
###############################################################################

cat > docs/05_TECH_STACK.md <<'EOF'
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

EOF

###############################################################################
# FILESYSTEM ENGINE
###############################################################################

cat > docs/09_FILESYSTEM_ENGINE.md <<'EOF'
# Filesystem Engine

Responsibilities

- Watch directories
- Detect changes
- Read metadata
- Never own user data

Events

FILE_CREATED

FILE_UPDATED

FILE_MOVED

FILE_DELETED

DIRECTORY_CREATED

DIRECTORY_DELETED

The filesystem is always the source of truth.
EOF

###############################################################################
# METADATA
###############################################################################

cat > docs/08_METADATA_SPEC.md <<'EOF'
# Metadata Specification

Metadata lives inside

.project/

Example

.project/

workspace.json

canvas/

graph/

layouts/

cache/

plugins/

Metadata stores

- Node positions
- Colors
- Groups
- Manual links
- Saved layouts

Metadata NEVER stores the actual file contents.
EOF

###############################################################################
# ADR
###############################################################################

cat > docs/adr/ADR-0001-source-of-truth.md <<'EOF'
# ADR-0001

Decision

The filesystem is the only source of truth.

Reason

Deleting the application must never affect user files.

Status

Accepted
EOF

###############################################################################
# VS CODE RESEARCH
###############################################################################

cat > docs/competitor-analysis/VSCODE.md <<'EOF'
# VS Code Research

Strengths

- Excellent filesystem abstraction
- Fast explorer
- Extension API
- Event driven architecture

Adopt

- File watcher
- Extension model
- Command palette

Reject

- Editor-first philosophy

We are workspace-first.
EOF

echo "==> R&D Pack v2 installed."
