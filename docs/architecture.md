# Architecture

The product is local-first. The core owns campaign data and state transitions; the dashboard is a UI; the bridge is a localhost-only transport for Figma; platform adapters are isolated and mockable.

OpenClaw -> skill -> core -> bridge -> Figma plugin -> exports -> dashboard preview -> platform adapters.
