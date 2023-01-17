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
-> END

= gate_finished
Librarian: Good luck for your first day!
-> END

//= general_text
//Librarian: If you have any questions or you're not sure what to do. Just come to me. 
//Librarian: I'll tell you what to do. 
//-> END

