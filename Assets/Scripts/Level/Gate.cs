using DG.Tweening;

using UnityEngine;

public class Gate : MonoBehaviour
{
    #region Inspector

    [SerializeField] private Transform platform;

    [SerializeField] private Vector3 closedPosition;

    [SerializeField] private Vector3 openedPosition;

    [SerializeField] private bool startOpened;

    [Header("Animation")]

    [Min(0)]
    [SerializeField] private float moveDuration = 1f;

    [SerializeField] private Ease ease = DOTween.defaultEaseType;

    #endregion

    private bool opened;

    #region Unity Event Functions

    private void Awake()
    {
        opened = startOpened;
        platform.localPosition = startOpened ? openedPosition : closedPosition;
    }

    #endregion

    public void Toggle()
    {
        if (opened)
        {
            Closed();
        }
        else
        {
            Open();
        }
    }

    public void Open()
    {
        opened = true;
        MovePlatform(openedPosition);
    }

    public void Closed()
    {
        opened = false;
        MovePlatform(closedPosition);
    }

    private void MovePlatform(Vector3 targetPosition)
    {
        float speed = (closedPosition - openedPosition).magnitude / moveDuration;

        platform.DOKill();
        platform.DOLocalMove(targetPosition, speed)
                .SetSpeedBased()
                .SetEase(ease);
    }
}
