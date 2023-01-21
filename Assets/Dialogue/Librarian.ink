=== librarian ===

= intro_start
Librarian: Hello and welcome to Miauz Academy! 
Librarian: I'm the school librarian and I'll help you to get through your first day of school. 
Tammy: Hello! Thank you so much!
Librarian: Since this is your first day here, you need to get to know our houses.
Librarian: There are four different elements - Fire, Water, Air and Earth. Each element represents a different specialization.
Tammy: That sounds interesting...
Librarian: So your task for today is to decide in which house you want to go. Therefore, you have to do different tasks from each house.
Tammy: Alright! Where do I start?
Librarian: At first, go to the Air Teacher right behind the open gate. He will give you the first task. 
Tammy: Ok! See you later!  
~ Unity_Event("quest_list")
-> END 

=intro_running
Librarian: Please go to the Air Teacher. 
-> END

= gate_start
Tammy: I'm done with my task from the Air Teacher... 
Tammy: So what's next?
Librarian: Next you have to go through the big gate.... But the handle is lost. Perhaps you can find it? Go search near the telescope, because I couldn't find it here.
Tammy: Well... That sounds easy!
~ Unity_Event("quest_list_gate")
-> END

= gate_running
Librarian: Did you find the handle?
Librarian: It has to be somewhere near the telescope. 
Tammy: Not yet, I'm still searching.
-> END

= gate_delivering
Tammy: I found the handle! 
Librarian: Great! Use it to open the gate.
Librarian: Oh, one more thing Go to the Fire Teacher next. He will have the next task for you.
Tammy: Okay, thank you!
~ Unity_Event("quest_list_fire")
-> END

= gate_finished
Librarian: Please go to the Fire Teacher next. 
-> END

//= general_text
//Librarian: If you have any questions or you're not sure what to do. Just come to me. 
//Librarian: I'll tell you what to do. 
//-> END

= choose_element
Tammy: I'm done with all of my tasks!
Librarian: Great, so now it's time to choose your element!
Tammy: I'm so excited. 
Librarian: Choose wisely. 
Tammy: Alright. 
Librarian: Remember, there are...
Librarian: Water for potion making.
Librarian: Fire for fighting.
Librarian: Air for stars and constellations.
Librarian: And Earth for plants and animals.
Librarian: Once you make your decision, you can't go back. 
    *[Water] {Unity_Event("choice_wasser")} 
    Librarian: Great choice! 
    Librarian: You're done for today and there are no tasks left.
    Librarian: Now you can go back to the dorm and relax until the next day. -> DONE
    *[Fire] {Unity_Event("choice_feuer")} 
    Librarian: Great choice! 
    Librarian: You're done for today and there are no tasks left.
    Librarian: Now you can go back to the dorm and relax until the next day. -> DONE
    *[Air] {Unity_Event("choice_luft")} 
    Librarian: Great choice! 
    Librarian: You're done for today and there are no tasks left.
    Librarian: Now you can go back to the dorm and relax until the next day. -> DONE
    *[Earth] {Unity_Event("choice_erde")} 
    Librarian: Great choice! 
    Librarian: You're done for today and there are no tasks left.
    Librarian: Now you can go back to the dorm and relax until the next day.
-> END

= idle
Librarian: You can go to your dorm now and take a break. 
-> END

