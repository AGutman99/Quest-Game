using System.Collections;
using UnityEngine;

public class PlayerAnimation : MonoBehaviour
{
    #region Inspector

    private static readonly int Interact = Animator.StringToHash("Interact");
    private GameObject player;
    private Animator animator;
    private AudioSource interactSound;
    private CharacterController characterController;

    #endregion

    private void Awake()
    {
       player = GameObject.FindWithTag("Player");
       animator = player.GetComponentInChildren<Animator>();
    }

    public void InteractAnim()
    {
        if (interactSound != null)
        {
            interactSound.Play();
        }
        animator.Play(Interact);
    }

    IEnumerator CD()
    {
        characterController.enabled = false;
        //input.Disable();
        yield return new WaitForSeconds(1f);
        //input.Enable();
        characterController.enabled = true;
    }
}
