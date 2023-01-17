using UnityEngine;

public class HairBlendShape : MonoBehaviour
{
    #region Inspector
    
    public SkinnedMeshRenderer meshRenderer;
    private int blendShapeIndex = 0;
    private float blendShapeWeight = 1f;
    
    #endregion

    private void Awake()
    {
        meshRenderer = GetComponent<SkinnedMeshRenderer>();
        blendShapeIndex = 0;
        blendShapeWeight = 100f;
    }
    
    public void BlendShape()
    {
        meshRenderer.SetBlendShapeWeight(blendShapeIndex, blendShapeWeight);
    }
}
