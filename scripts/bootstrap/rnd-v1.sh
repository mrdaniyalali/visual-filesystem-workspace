
#!/usr/bin/env bash
set -euo pipefail

echo "==> Creating R&D documentation..."

mkdir -p docs/competitor-analysis

cat > docs/00_PROJECT_DNA.md <<'EOF'
# PROJECT DNA

## Product Definition

A local-first visual filesystem platform.

## Mission

Turn any folder into a visual workspace without importing or copying data.

## Source of Truth

The filesystem is always the source of truth.

## Non-Negotiable Rules

- Never import user files into a database.
- Never require cloud sync.
- Never modify user files unless explicitly requested.
- Metadata is stored separately.
- Views render data. They never own data.

## Core Engines

1. Filesystem Engine
2. Metadata Engine
3. Event Bus
4. Search Engine
5. View Engine

## Philosophy

The application is a visual layer over the filesystem.
If the application is deleted, the user's files remain completely intact.
EOF

cat > docs/competitor-analysis/AFFINE.md <<'EOF'
# AFFiNE Research

## Strengths

- Excellent UX
- Infinite whiteboard
- Databases
- Local-first support

## Weaknesses

- Workspace becomes the source of truth.
- Requires importing/creating data inside AFFiNE.

## Ideas to Adopt

- Infinite canvas
- Block editing
- Multiple synchronized views

## Ideas to Reject

- Internal database replacing the filesystem.
EOF

cat > docs/competitor-analysis/OBSIDIAN.md <<'EOF'
# Obsidian Research

## Strengths

- Markdown-first
- Fast
- Plugin ecosystem
- Local-first

## Weaknesses

- Graph is note-centric.
- Doesn't visualize the filesystem itself.

## Ideas to Adopt

- Plugin architecture
- Local-first philosophy

## Ideas to Reject

- Vault-centric model.
EOF

cat > docs/NEXT_STEPS.md <<'EOF'
# Immediate Research Tasks

- VS Code Architecture
- React Flow
- tldraw
- Metadata Specification
- Desktop Framework Evaluation
EOF

echo "==> R&D v1 installed."
