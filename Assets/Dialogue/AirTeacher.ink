=== airteacher ===
{air_quest_done: -> air_quest_final}
{air_quest_delivering.wrong: -> air_quest_running}
{librarian: -> air_quest_start}

-> airteacher_welcome

= airteacher_welcome
Air teacher: Hey! You must be new! Welcome to our Academy.
Air teacher: Please go to the Librarian if you have any questions.
Tammy: Alright!
-> END

= air_quest_start
Air teacher: Hello and welcome to our Academy.
Tammy: The Librarian told me you've a task for me! 
Air teacher: That's right! 
Air teacher: At frist I'll tell you something about out element Air. 
Air teacher: We describe ourselfs as very social and openminded. We deal with astronomy and the celestial bodies.
Tammy: Looks up at the sky #thought
Tammy: This so intereseting.. 
Air teacher: Isn't it? 
Air teacher: So you first task for today, go ahead and look through the Teleskop and count the constellations. 
Air teacher: After your done with it come back to me and tell me how many you counted. 
Tammy: Alright! I'll be right back.
~ Unity_Event("quest_list_air")
-> END

= air_quest_pending
Air teacher: Please use the Telescope to count the constellations.
-> END

= air_quest_running
Air teacher: Are you done counting? 
+ [Yes!] -> air_quest_delivering
+ (decline)[No, let me look again.]
    Air teacher: Take as many time you need. 
-> END


= air_quest_delivering
Air teacher: Great! So how many constellations did you count?
* (right)[I'm sure there were 5!] -> air_quest_done
+ (wrong)[Maybe there were 4?]
    Air teacher: Are you sure? Maybe take another look.
-> END


= air_quest_done
Air teacher: Good job! Now you have a little taste of the things we do. 
Air teacher: I don't have any tasks for you left. Go back to the Librarian and ask her what you can do next.
Tammy: That was great! I'm so excided about the next tasks. Thank you so much! 
Tammy: See you!
~ Unity_Event("air_quest_done")
-> END

= air_quest_final
Air teacher: I don't have any tasks left. Please go back to the Librarian. Good luck!
-> END