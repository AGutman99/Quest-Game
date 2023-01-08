using DG.Tweening;

using UnityEngine;

public class QuestEntry : MonoBehaviour
{
    #region Inspecor

    [Tooltip("The icon to indicate the status of the quest")]
    [SerializeField] private GameObject statusIndicator;
    

    #endregion

    private CanvasGroup canvasGroup;

    #region Unity Event Functions

    private void Awake()
    {
        SetQuestStatus(false);
        canvasGroup = GetComponent<CanvasGroup>();
        canvasGroup.alpha = 0;
    }

    private void OnEnable()
    {
        this.DOKill();
        DOTween.To(() => 0f, x => canvasGroup.alpha = x, 1f, 0.8f);
    }

    private void OnDisable()
    {
        this.DOKill();
        DOTween.To(() => 1f, x => canvasGroup.alpha = x, 0f, 0.8f);
    }

    #endregion

    public void SetQuestStatus(bool fulfilled)
    {
        statusIndicator.SetActive(fulfilled);
    }
}
