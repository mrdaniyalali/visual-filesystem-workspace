#!/usr/bin/env bash
set -euo pipefail

echo "==> Installing R&D Pack v3..."

mkdir -p docs
mkdir -p docs/adr

###############################################################################
# CORE ARCHITECTURE
###############################################################################

cat > docs/04_ARCHITECTURE.md <<'EOF'
# Architecture

The project is split into independent engines.

                    UI
                     │
         ┌───────────┼───────────┐
         │           │           │
      Canvas       Graph       Table
         │           │           │
         └───────────┼───────────┘
                     │
              View Engine API
                     │
              Event Bus Engine
                     │
     ┌───────────────┼────────────────┐
     │               │                │
Filesystem     Metadata Engine   Search Engine
     │
Operating System

Rules

- Views never own data.
- Views only render.
- Everything talks through events.
- Filesystem is always authoritative.

EOF

###############################################################################
# EVENT BUS
###############################################################################

cat > docs/21_EVENT_BUS.md <<'EOF'
# Event Bus

Everything communicates through events.

Example

Filesystem
    │
FILE_CREATED
    │
Event Bus
    │
Canvas
Graph
Search
Plugins

Core Events

FILE_CREATED

FILE_UPDATED

FILE_MOVED

FILE_DELETED

NOTE_CREATED

METADATA_UPDATED

VIEW_CHANGED

PLUGIN_LOADED

Rules

No module directly calls another module.

Everything is event driven.

EOF

###############################################################################
# VIEW ENGINE
###############################################################################

cat > docs/22_VIEW_ENGINE.md <<'EOF'
# View Engine

A View is only a renderer.

Views

Explorer

Canvas

Graph

Table

Gallery

Timeline

Mind Map

Future

3D

Rules

A view cannot modify user files directly.

Views ask the Core Engine.

EOF

###############################################################################
# PROJECT STRUCTURE
###############################################################################

cat > docs/23_PROJECT_STRUCTURE.md <<'EOF'
# Proposed Repository

apps/
desktop/

packages/

core/

filesystem/

metadata/

search/

events/

views/

canvas/

graph/

table/

shared/

docs/

scripts/

EOF

###############################################################################
# ADR
###############################################################################

cat > docs/adr/ADR-0002-event-driven.md <<'EOF'
# ADR-0002

Decision

Use an event-driven architecture.

Reason

Loose coupling.

Allows plugins and multiple views without circular dependencies.

Status

Accepted.

EOF

echo "==> R&D Pack v3 installed."
