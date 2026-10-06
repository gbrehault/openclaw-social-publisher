# Template Schema — developer reference

The schema is internal. It separates visual structure from campaign content.

A template has:

- id
- name
- version
- source document information
- layouts
- timestamps

Each layout stores a Figma node reference and bindings:

```json
{
  "id": "my-brand-carousel",
  "name": "My Brand Carousel",
  "version": 1,
  "layouts": {
    "cover": {
      "nodeId": "FIGMA_NODE_REFERENCE",
      "bindings": [
        { "key": "title", "type": "title", "nodeId": "NODE_REFERENCE" },
        { "key": "brandName", "type": "brandName", "nodeId": "NODE_REFERENCE" }
      ]
    }
  }
}
```

Campaign Data is separate:

```json
{
  "slides": [
    { "layout": "cover", "title": "5 erreurs SEO", "brandName": "Example Studio" }
  ]
}
```

The rendering contract is:

**Campaign Data + Template Schema = Figma Rendering**

Validation rejects missing layouts, broken node references, duplicate binding keys and missing campaign fields before a bridge job is created.
