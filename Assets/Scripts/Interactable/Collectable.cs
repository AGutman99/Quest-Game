using System.Collections;

using UnityEngine;
using UnityEngine.Events;

public class Collectable : MonoBehaviour
{
    #region Inspector

    [Tooltip("ID of the collectable ad the amount to be picked up")]
    [SerializeField] private State state;

    [Tooltip("Invoked when the collectable is collected")]
    [SerializeField] private UnityEvent onCollected;
    
    private PlayerController player;
    private Animator playerAnimator;
    private static readonly int Interact = Animator.StringToHash("Interact");

    #endregion

    private void Awake()
    {
        player = FindObjectOfType<PlayerController>();
        playerAnimator = player.GetComponentInChildren<Animator>();
        if (player == null)
        {
            Debug.LogError("No player found", this);
        }
    }

    public void Collect()
    {
        onCollected.Invoke();
        FindObjectOfType<GameState>().Add(state);
        
        playerAnimator.SetTrigger(Interact);
        
        player.DisableInput();

        StartCoroutine(DelayDestroy());
    }

    private IEnumerator DelayDestroy()
    {
        yield return new WaitForSeconds(1f);
        
        player.EnableInput();
        
        Destroy(gameObject);
    }
}
