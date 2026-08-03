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
