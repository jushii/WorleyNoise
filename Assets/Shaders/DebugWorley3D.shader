Shader "WorleyNoiseGenerator/DebugWorley3D"
{
    Properties
    {
        _BaseMap("Base Map", 3D) = ""
        _SliceDepth ("Slice Depth", Float) = 0.5
    }
    SubShader
    {
        Tags { "RenderType"="Opaque" "RenderPipeline" = "UniversalPipeline" }

        Pass
        {
            HLSLPROGRAM
            
            #pragma vertex vert
            #pragma fragment frag

            #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Core.hlsl"

            float _SliceDepth;
            
            struct Attributes
            {
                float4 vertex : POSITION;
                float3 uv : TEXCOORD0;
            };

            struct Varyings
            {
                float4 vertex : SV_POSITION;
                float3 uv : TEXCOORD0;
            };

            TEXTURE3D(_BaseMap);
            SAMPLER(sampler_BaseMap);
            
            Varyings vert (Attributes IN)
            {
                Varyings o;
                o.vertex = TransformObjectToHClip(IN.vertex);
                o.uv = IN.uv;
                return o;
            }

            half4 frag (Varyings IN) : SV_Target
            {
                return  SAMPLE_TEXTURE3D(_BaseMap, sampler_BaseMap, float3(IN.uv.x, IN.uv.y, _SliceDepth));
            }
            
            ENDHLSL
        }
    }
}
