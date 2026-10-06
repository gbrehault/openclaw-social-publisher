# Custom Template live test

The automation and tests are ready on branch custom-figma-templates. The remaining gate is a real Figma Desktop run.

1. Create a new blank Figma file named OpenClaw Custom Template — Live Test.
2. Draw the three frames described in tests/fixtures/custom-template-live-brief.md using any visual direction.
3. Import and run apps/figma-plugin/manifest.json.
4. In Template Builder, select the Cover frame and click Create template from selection.
5. Select each described layer, choose its human-readable binding role, and click Bind selected layer. Repeat for Content and CTA.
6. Click Save Template with the name My Brand Carousel. Confirm the dashboard Templates section shows the template and its binding count.
7. Click Create sample preview in the plugin. Confirm a duplicated frame appears and the original Cover, Content and CTA frames are visually unchanged.
8. In the dashboard, use My Brand Carousel for a new 3-slide campaign, then use the template render path and bridge job.
9. In Figma, click Load next bridge job.
10. Confirm the generated frames preserve the custom typography, colors, gradients, spacing, masks, components and structure while only bound content changes.
11. Confirm the bridge reaches exported and the dashboard serves the JPEG previews.

Do not claim v0.3.0 LIVE-TESTED until the original-template comparison and exported previews are verified.
