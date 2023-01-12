using System.Collections;
using System.Collections.Generic;

using UnityEngine;
using UnityEngine.AI;

using Random = UnityEngine.Random;

public class NavMeshPatrol : MonoBehaviour
{
    #region Inspector

    [SerializeField] private Animator animator;
    
    [SerializeField] private bool randomOrder;
    
    [SerializeField] private List<Transform> waypoints;

    [SerializeField] private bool waitAtWaypoint = true;

    [Tooltip("Min/Max duration at each waypoint in seconds.")]
    [SerializeField] private Vector2 waitDuration = new Vector2(1, 5);

    #endregion

    private NavMeshAgent navMeshAgent;

    private int currentWaypointIndex = -1;

    private bool waiting;
    private static readonly int MovementSpeed = Animator.StringToHash("MovementSpeed");

    #region Unity Event Functions
    private void Awake()
    {
        navMeshAgent = GetComponent<NavMeshAgent>();
        navMeshAgent.autoBraking = waitAtWaypoint;
    }

    private void Start()
    {
        SetNextWaypoint();
    }

    private void Update()
    {
        animator.SetFloat(MovementSpeed, navMeshAgent.velocity.magnitude);
        CheckIfWaypointIsReached();
    }
    
    #endregion

    #region Navigation

    public void StopPatrolForDialogue()
    {
        StopPatrol();
        DialogueController.DialogueClosed += ResumePatrol;
    }

    public void StopPatrol()
    {
        navMeshAgent.isStopped = true;
    }

    public void ResumePatrol()
    {
        navMeshAgent.isStopped = false;
        // Will do nothing if never subscribed.
        DialogueController.DialogueClosed -= ResumePatrol;
    }

    private void SetNextWaypoint()
    {
        switch (waypoints.Count)
        {
            case 0:
                Debug.LogError("No waypoints set for NacMeshPatrol", this);
                return;
            case 1:
                if (randomOrder)
                {
                    Debug.LogError("Only one waypoint set for NavMeshPatrol. Need at least 2 with randomOrder enabled", this);
                }
                break;
        }
        
        if (randomOrder)
        {
            int newWaypointIndex;
            do
            {
                newWaypointIndex = Random.Range(0, waypoints.Count);
            }
            while (newWaypointIndex == currentWaypointIndex);
            currentWaypointIndex = newWaypointIndex;
        }
        else
        {
            currentWaypointIndex = (currentWaypointIndex + 1) % waypoints.Count;   
        }

        navMeshAgent.destination = waypoints[currentWaypointIndex].position;
    }

    private void CheckIfWaypointIsReached()
    {
        if (waiting) { return; }
        if (navMeshAgent.pathPending) { return; }

        if (navMeshAgent.remainingDistance <= navMeshAgent.stoppingDistance + 0.1f)
        {
            if (waitAtWaypoint)
            {
                StartCoroutine(WaitBeforeWaypoint(Random.Range(waitDuration.x, waitDuration.y)));
            }
            else
            {
                SetNextWaypoint();   
            }
        }
    }

    private IEnumerator WaitBeforeWaypoint(float duration)
    {
        waiting = true;
        yield return new WaitForSeconds(duration);
        SetNextWaypoint();
        waiting = false;
    }

    #endregion
}
