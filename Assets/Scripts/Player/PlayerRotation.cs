using System.Collections;

using UnityEngine;

public class PlayerRotation : MonoBehaviour
{
    #region Inspector

    //[SerializeField] private GameObject player;
    [SerializeField] private Transform target;
    private PlayerController playerController;
    [SerializeField] private float targetRotationY;
    //[SerializeField] private ParticleSystem particleSystem;
    // ALTERNATIVE
    //public GameObject particleSystem;
    
    #endregion

    private void Awake()
    {
        playerController = FindObjectOfType<PlayerController>();
    }

    public void TargetRotation()
    {
       playerController.TargetRotation(target, targetRotationY);
    }
    
    private IEnumerator DelayedEnableInput()
    {
        yield return new WaitForSeconds(3.8f);
        //particleSystem.Stop();
        // ALTERNATIVE
        //particleSystem.SetActive(false);
        playerController.EnableInput();
    }
}
