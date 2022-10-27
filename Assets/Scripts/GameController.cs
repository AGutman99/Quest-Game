using System;

using UnityEngine;

public class GameController : MonoBehaviour
{
    #region Unity Event Function

    private void Start()
    {
        EnterPlayMode();
    }

    #endregion

    #region Modes

    private void EnterPlayMode()
    {
        // In the editor: unlock with ESC
        Cursor.lockState = CursorLockMode.Locked;
    }

    #endregion
}
