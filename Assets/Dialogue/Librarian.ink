=== librarian ===

= intro_start
Librarian: Hello and welcome to MiauzAcademy! 
Librarian: I'm the school librarian and I'll help you to get through your first day of school. 
Tammy: Hello! Thank you so much!
Librarian: Since this is your first day here, you have to get to know our houses.
Librarian: There are four different elements Fire, Water, Air and Earth. Each element represents a different specialization.
Tammy: That sounds intereseting...
Librarian: So your task for today is to decide in which house you want to go. Therefore you have to do different tasks from each house.
Tammy: Alright! Where do I start?
Librarian: At first go to the Air Teacher right behind the open gate. He will give you the first task. 
Tammy: Ok! See you later!  
~ Unity_Event("quest_list")
-> END 

=intro_running
Librarian: Please go to the Air Teacher. 
-> END

= gate_start
Tammy: I'm done with my task from the Air Teacher.. 
Tammy: So what now? 
Librarian: Next you have to go through the big gate... But the handle is lost. Maybe you can find it? Go search near the Telescope because I couldn't find it here.
Tammy: Well... That sounds easy!
~ Unity_Event("quest_list_gate")
-> END

= gate_running
Librarian: Did you find the handle?
Librarian: It has to be somewhere near the Telescope. 
Tammy: Not yet. Still searching.
-> END

= gate_delivering
Tammy: I found the handle! 
Librarian: Great! Use it to open the gate.
Librarian: Oh! And one more thing. Go to the Fire Teacher next. He will have the next task for you.
Tammy: Ok! Thank you.
~ Unity_Event("quest_list_fire")
-> END

= gate_finished
Librarian: Please go to the Fireteacher next. 
-> END

//= general_text
//Librarian: If you have any questions or you're not sure what to do. Just come to me. 
//Librarian: I'll tell you what to do. 
//-> END

= choose_element
Tammy: I'm done with all my tasks!
Librarian: Great. So now it is time to choose your Element. 
Tammy: I'm so excited. 
Librarian: Choose wisely. 
Tammy: Alright. 
Librarian: Remember there are
Librarian: Water for Potion making.
Librarian: Fire for Fighting.
Librarian: Air for Stars and Constellations.
Librarian: And Earth for Plants and Animals.
Librarian: If you made your decision you can't go back. 
    *[Water] {Unity_Event("choice_water")} -> DONE
    *[Fire] {Unity_Event("choice_fire")} -> DONE
    *[Air] {Unity_Event("choice_air")} -> DONE
    *[Earth] {Unity_Event("choice_earth")} -> DONE
Librarian: Great choice! 
Librarian: You're done for today and there no tasks left.
Librarian: Now you can go back to the dorm and relax until the next day.
-> END

