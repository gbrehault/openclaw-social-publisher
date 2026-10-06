# Figma live test handoff

The automated preparation is complete. The remaining step requires Figma Desktop, which is unavailable to the current session's computer provider.

## 1. Manifest

Import this exact file into Figma Desktop:

`/Users/gabrielbrehault/Projects/openclaw-social-publisher/apps/figma-plugin/manifest.json`

The manifest points to `code.js` and `ui.html` in the same directory.

## 2. Bridge

The bridge is already prepared on loopback port 4318. To start it manually:

```bash
cd /Users/gabrielbrehault/Projects/openclaw-social-publisher
pnpm bridge
```

Expected log:

`Figma bridge listening on http://127.0.0.1:4318 data=.../data/figma-live`

Health check:

`curl http://127.0.0.1:4318/health`

## 3. Test document

Create or open a new blank Figma Design file named `OpenClaw Social Publisher — Live Test`. Do not open or edit a BRHCRÉA production document.

## 4. Queue the campaign

The generic seven-slide campaign is prepared at:

`tests/fixtures/figma-live-7-slides.json`

Queue it with:

`pnpm figma:test:prepare`

Current prepared job: `figma-live-test-7`, 7 slides, 0 exports received.

## 5. Run the plugin

In Figma Desktop:

1. Plugins → Development → Import plugin from manifest.
2. Select the manifest above.
3. Run **OpenClaw Publisher — Live Figma Test**.
4. Confirm the Bridge URL is `http://127.0.0.1:4318`.
5. Click **Load next bridge job**.

## 6. Expected result

Figma should create 7 real frames named:

- `SLIDE-01-COVER`
- `SLIDE-02-CONTENT` through `SLIDE-06-CONTENT`
- `SLIDE-07-CTA`

The plugin should export 7 JPGs and upload them to:

`data/figma-live/figma-live-test-7/01.jpg` through `07.jpg`

Check status:

`curl "http://127.0.0.1:4318/status?jobId=<jobId>"`

Success means:

- `status=exported`
- `expectedExports=7`
- `exportedFiles=["01.jpg",...,"07.jpg"]`
- all 7 files are non-empty JPGs.

The dashboard preview endpoint is:

`http://127.0.0.1:4319/preview/figma-live/figma-live-test-7/01.jpg`

## Dashboard preview

In a second terminal, run `cd /Users/gabrielbrehault/Projects/openclaw-social-publisher && pnpm dev`. Open `http://127.0.0.1:4319` after exports arrive. The direct preview endpoint is available even without the UI.

## Current boundary

The bridge, payload, plugin code, export contract, status endpoint and dashboard preview route are prepared and locally contract-tested. No LIVE-TESTED claim is made until Figma Desktop creates the real frames and returns real JPG exports.
