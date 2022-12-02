using DG.Tweening;

using UnityEngine;

public class HandleAnimation : MonoBehaviour
{
    private Sequence sequence;

    public void PlayAnimation()
    {
        sequence.Complete(true);

        sequence = DOTween.Sequence();
        sequence.Append(transform.DORotate(new Vector3(0, 36, -130), 2));
    }
}
    