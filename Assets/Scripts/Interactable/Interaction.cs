using System.Collections.Generic;
using System.Linq;

using UnityEngine;
using UnityEngine.Events;

public class Interaction : MonoBehaviour
{
    #region Inspector

    [SerializeField] private UnityEvent onInteracted;

    [Tooltip("Next interaction to be activated once this interaction was executed. It will be executed next time the player interact with this interactable")]
    [SerializeField] private Interaction nextInteraction;

    #endregion

    #region Unity Event Function

    private void Awake()
    {
        gameObject.SetActive(false);
    }

    private void OnEnable()
    {
        List<Interaction> interactions = transform.parent.GetComponentsInChildren<Interaction>().ToList();

        foreach (Interaction interaction in interactions)
        {
            if (interaction == this) { continue; }
            
            interaction.gameObject.SetActive(false);
        }
    }

    #endregion

    public void Execute()
    {
        if (nextInteraction != null)
        {
            nextInteraction.gameObject.SetActive(true);
        }
        
        onInteracted.Invoke();
    }
    
}
