#!/usr/bin/env bash
set -euo pipefail
cd /home/bigrigv2/rrs_edge_worker
if [[ -n "${CLOUDFLARE_API_TOKEN:-}" ]]; then
  echo "[1/2] Deploying Cloudflare Worker..."
  npx --yes wrangler deploy
elif [[ -n "${VERCEL_TOKEN:-}" ]]; then
  echo "[1/2] Deploying Vercel Edge Function..."
  npx --yes vercel deploy --prod --yes --token "${VERCEL_TOKEN}"
else
  echo "Run: npx wrangler login && npx wrangler deploy  OR  npx vercel login && npx vercel --prod"
  exit 1
fi
