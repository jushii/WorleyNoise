using UnityEngine;
using UnityEditor;

[CustomEditor(typeof(WorleyNoiseGenerator))]
public class WorleyNoiseGeneratorEditor : Editor
{
    private WorleyNoiseGenerator _worleyNoiseGenerator;

    public override void OnInspectorGUI()
    {
        _worleyNoiseGenerator = (WorleyNoiseGenerator) target;
        
        DrawDefaultInspector();
        
        if (GUILayout.Button("Generate"))
        {
            _worleyNoiseGenerator.Generate();
        }
    }
}
