using UnityEngine;

public class Billboard : MonoBehaviour
{
    private Camera camera;

    #region Unity Event Region

    private void Awake()
    {
        camera = Camera.main;
    }

    private void Update()
    {
        transform.rotation = camera.transform.rotation;
    }

    #endregion
}
