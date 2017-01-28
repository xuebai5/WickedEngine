#include "volumeLightHF.hlsli"
#include "quad.hlsli"

VertexToPixel main(uint vID : SV_VertexID)
{
	VertexToPixel Out = (VertexToPixel)0;

	float4 pos = QUAD[vID];
	pos = mul(pos, lightWorld);
	Out.pos = mul(pos, g_xCamera_VP);
	Out.col = float4(lightColor.rgb * lightEnerdis.x, 1);

	return Out;
}