---
name: social-publisher
description: Create, manage, bind, validate, preview and render social campaigns with custom Figma templates through OpenClaw Social Publisher.
---
# Social Publisher

Use the product API/core rather than duplicating campaign state in conversation.

## Custom Figma template rules

Before generating Campaign Data, retrieve the selected template schema from the dashboard and inspect its real layouts and bindings. Never invent a binding or layout that is absent from the schema. Keep Template Schema and Campaign Data separate.

Supported intents:
- Show my Figma templates.
- Use [template] as the default template.
- Create a campaign with [template].
- Use layout [name] for a specific slide.
- Create a carousel with the default template.
- Preview a custom template with sample data.

The plugin owns visual binding and template persistence. JSON is an internal representation only; normal designers should work in Figma and use Title, Body, Image, CTA, Page Number, Username, Brand Name, Logo, Eyebrow / Label or Custom Binding.

## Safety and compatibility

The historical renderer remains the fallback when no custom template is selected. Never mutate an original Figma template during rendering: custom rendering must clone layouts, inject bound data into the clones, and export only the clones. If a node, layout, font or binding is missing, report a human-readable error and do not silently substitute a different design or binding.

Never claim LIVE-TESTED for a Figma flow without real Figma Desktop execution and bridge export evidence. Never claim MOCKED platform adapters as publication.
