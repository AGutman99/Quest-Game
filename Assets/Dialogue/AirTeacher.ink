=== airteacher ===
{air_quest_done: -> air_quest_final}
{air_quest_delivering.wrong: -> air_quest_running}
{librarian: -> air_quest_start}

-> airteacher_welcome

= airteacher_welcome
Air Teacher: Hey, you must be new! Welcome to our academy.
Air Teacher: Please go to the Librarian if you have any questions.
Tammy: Alright!
-> END

= air_quest_start
Air Teacher: Hello and welcome to our academy.
Tammy: The librarian told me that you have a task for me! 
Air Teacher: That's right! 
Air Teacher: At frist, I'll tell you something about out element - Air. 
Air Teacher: We describe ourselves as very social and open-minded. We are concerned with astronomy and the celestial bodies.
Tammy: Looks up at the sky #thought
Tammy: This is so interesting...  
Air Teacher: Isn't it? 
Air Teacher: So as your first task for today, go ahead, look through the telescope and count the constellations. 
Air Teacher: When you're done, come back to me and tell me how many you counted.
Tammy: Alright! I'll be right back.
~ Unity_Event("quest_list_air")
-> END

= air_quest_pending
Air Teacher: Please use the telescope to count the constellations.
-> END

= air_quest_running
Air Teacher: Are you done counting? 
+ [Yes!] -> air_quest_delivering
+ (decline)[No, let me look again.]
    Air teacher: Take as much time as you need.
-> END


= air_quest_delivering
Air Teacher: Great! So how many constellations did you count?
* (right)[I'm sure there were 5!] -> air_quest_done
+ (wrong)[Maybe there were 4?]
    Air Teacher: Are you sure? Maybe take another look.
-> END


= air_quest_done
Air Teacher: Good job! Now you have a little taste of what we do.
Air Teacher: I don't have any tasks left for you. Go back to the Librarian and ask her what you can do next.
Tammy: That was great! I'm so excited for the next tasks. Thank you so much! 
Tammy: See you!
~ Unity_Event("air_quest_done")
-> END

= air_quest_final
Air Teacher: I don't have any tasks left. Please go back to the Librarian. Good luck!
-> END