# Solana Rent & Rug Shield 24/7 Serverless Edge API (`api.rentandrugshield.com`)

Stateless, non-custodial serverless edge API (Cloudflare Workers `wrangler.toml` + Vercel Edge `vercel.json`) providing:
* Free unlimited read-only Solana SPL & Token-2022 `0x09` empty ATA wallet rent scans (`/api/scan-wallet`)
* Free unlimited read-only 12-layer Solana token rug scans (`/api/rug-check`, `/api/scan-token`)
* Streamable HTTP Model Context Protocol endpoint (`/mcp`, protocol `2025-03-26`)
* Zero seed phrases, zero private keys, 0% fee on first SOL rent claim (optional paid Pro/API tiers)
