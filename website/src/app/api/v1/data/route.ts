import { data, builtinTypes, upstreamInfo, nixInfo } from "@/models/data";

export const dynamic = "force-static";

export async function GET(request: Request) {
  return Response.json({ data, builtinTypes, upstreamInfo, nixInfo });
}
