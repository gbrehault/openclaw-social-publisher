# Security

Secrets are environment-only and excluded by gitignore. The Figma bridge binds to loopback by default. Platform credentials remain server-side. CI uses dry-run and mocks; tests never publish.
