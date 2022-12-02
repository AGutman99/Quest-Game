using UnityEngine;

public class QuestEntry : MonoBehaviour
{
    #region Inspecor

    [Tooltip("The icon to indicate the status of the quest")]
    [SerializeField] private GameObject statusIndicator;
    

    #endregion

    #region Unity Event Functions

    private void Awake()
    {
        SetQuestStatus(false);
    }

    #endregion

    public void SetQuestStatus(bool fulfilled)
    {
        statusIndicator.SetActive(fulfilled);
    }
}
