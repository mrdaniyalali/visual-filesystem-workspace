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

