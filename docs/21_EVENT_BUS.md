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

