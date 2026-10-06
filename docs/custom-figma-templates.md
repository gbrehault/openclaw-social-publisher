# Create your own Figma template

OpenClaw Social Publisher lets a designer keep their own visual direction. The workflow is:

**Design → Select layer → Bind → Save → Use**

1. Open a blank Figma file and create a frame or component.
2. Run the OpenClaw Template Builder plugin.
3. Select the frame and click **Create template from selection**.
4. Select a layer, choose a simple role such as **Title**, **Body**, **Image**, **CTA** or **Page Number**, then click **Bind selected layer**.
5. Repeat for each layout.
6. Click **Save Template**.
7. In the dashboard, choose the saved template when creating a campaign.

The plugin stores bindings in Figma pluginData. You do not write JSON. The original frame stays untouched when previews and campaigns are generated; the renderer works on duplicates.

## Current v0.3 boundary

The builder, visual bindings, schema persistence, default template selection, dashboard template section, campaign-data validation and duplicate-based plugin renderer are implemented and statically/contract tested. A real custom-template end-to-end run in Figma Desktop is still required before v0.3.0.
