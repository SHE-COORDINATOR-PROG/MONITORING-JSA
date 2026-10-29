import {NextResponse} from "next/server";
export function middleware(req){const p=process.env.APP_PASSWORD;if(!p)return NextResponse.next();
const a=req.headers.get("authorization")||"";
if(a.startsWith("Basic ")&&atob(a.slice(6)).split(":").slice(1).join(":")===p)return NextResponse.next();
return new Response("Login diperlukan",{status:401,headers:{"WWW-Authenticate":'Basic realm="Rekam JSA"'}})}
export const config={matcher:["/((?!_next/static|_next/image|favicon.ico).*)"]};
