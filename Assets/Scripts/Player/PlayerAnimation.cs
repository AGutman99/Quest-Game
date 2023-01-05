using System.Collections;
using UnityEngine;

public class PlayerAnimation : MonoBehaviour
{
    private static readonly int Interact = Animator.StringToHash("Interact");
    [SerializeField] private GameObject player;
    [SerializeField] private Animator animator;
    private AudioSource interactSound;
    private CharacterController characterController;

    private void Awake()
    {
        //interactSound = GameObject.FindWithTag("interactSound").GetComponent<AudioSource>();

        player = GameObject.FindWithTag("Player");
        animator = player.GetComponentInChildren<Animator>();
        //characterController = player.GetComponent<CharacterController>();
    }

    public void InteractAnim()
    {
        if (interactSound != null)
        {
            interactSound.Play();
        }
        animator.Play(Interact);
        //StartCoroutine(CD());
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
