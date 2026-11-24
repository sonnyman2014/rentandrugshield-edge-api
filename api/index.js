import { handleEdgeRequest } from "../src/worker.js";
export const config = { runtime: "edge" };
export default async function handler(request) {
  return handleEdgeRequest(request, {
    HELIUS_RPC_URL: process.env.HELIUS_RPC_URL || "",
    HELIUS_API_KEY: process.env.HELIUS_API_KEY || ""
  });
}
