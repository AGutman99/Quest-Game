using System.Collections;

using UnityEngine;

public class Fade : MonoBehaviour
{
    #region Inspector

    [SerializeField] public GameObject robeWasser;
    [SerializeField] public GameObject hutWasser;
    [SerializeField] public GameObject robeFeuer;
    [SerializeField] public GameObject hutFeuer;
    [SerializeField] public GameObject robeLuft;
    [SerializeField] public GameObject hutLuft;
    [SerializeField] public GameObject robeErde;
    [SerializeField] public GameObject hutErde;
    [SerializeField] public GameObject removeHemd;
    [SerializeField] public GameObject removeRock;
    [SerializeField] public GameObject removeHair;
    [SerializeField] public GameObject addHair;

    #endregion

    #region Unity Event Functions

    public void changeWasser()
    {
        StartCoroutine(waitWasser());
    }
    
    IEnumerator waitWasser()
    {
        yield return new WaitForSeconds(1f);
        
        robeWasser.SetActive(true);
        hutWasser.SetActive(true);
        addHair.SetActive(true);
        removeHemd.SetActive(false);
        removeRock.SetActive(false);
        removeHair.SetActive(false);
    }
    
    public void changeFeuer()
    {
        StartCoroutine(waitFeuer());
    }
    
    IEnumerator waitFeuer()
    {
        yield return new WaitForSeconds(1f);
        
        hutFeuer.SetActive(true);
        robeFeuer.SetActive(true);
        addHair.SetActive(true);
        removeHemd.SetActive(false);
        removeRock.SetActive(false);
        removeHair.SetActive(false);
    }
    
    public void changeErde()
    {
        StartCoroutine(waitErde());
    }
    
    IEnumerator waitErde()
    {
        yield return new WaitForSeconds(1f);
        
        hutErde.SetActive(true);
        robeErde.SetActive(true);
        addHair.SetActive(true);
        removeHemd.SetActive(false);
        removeRock.SetActive(false);
        removeHair.SetActive(false);
    }
    
    public void changeLuft()
    {
        StartCoroutine(waitLuft());
    }
    
    IEnumerator waitLuft()
    {
        yield return new WaitForSeconds(1f);
        
        hutLuft.SetActive(true);
        robeLuft.SetActive(true);
        addHair.SetActive(true);
        removeHemd.SetActive(false);
        removeRock.SetActive(false);
        removeHair.SetActive(false);
    }

    #endregion
}
