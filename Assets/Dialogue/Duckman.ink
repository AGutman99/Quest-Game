=== duckman ===
{island_accept: -> island_follow_up}
{island.decline: -> island_retry}
-> island

= island
Duckman: Hey there fellow humanoid! What brings you to these lands?
Robot: Just passing through, looking at the scenery.
Duckman: Then you might want to check out a pretty island over there. It has a lovely forest on it.
* [Sure! Sounds good.] -> island_accept
* (decline)[I rather not.]
    Duckman: That's a bummer. 
    Well if you reconsider, just say the word. 

-> END

= island_retry
Robot: About the island...
Duckman: Did you reconsider? Just say the word, and I'll tell you how to get over there.
* [Yes] ->island_accept
+ [I still don't want to.]
    Duckman: To each their own. 

-> END

= island_accept
Duckman: Great. Just head over to the brodge.
There should be a button near it you can press to extend it.
It's a bit stuck so you <b>really</b> have to jam it in to activate it. 
Robot: Thanks for the info!
~ Unity_Event("unlock_bridge")
-> END

= island_follow_up
{island_apples: -> island_done}
Duckman: Did you already checkout the island?
{Get_State("item_apple") and not island_apples: -> island_apples}
Just head over to the bridge and press the button.
-> END

= island_apples
Robot: Yes, I even found some appples in the forest!
Duckman: Nice! Can I have one?
* [Yes]
    Robot: Sure, have some.
    ~ Add_State("item_apple", -1)
    Duckman: Thanks!<br><i>munch munch munch</i>
* [No]
    Robot: No, they're mine.
    Duckman: Oh ok.
- -> END

= island_done
Duckman: It <b>is</b> a nice island, isn't it?
-> END
