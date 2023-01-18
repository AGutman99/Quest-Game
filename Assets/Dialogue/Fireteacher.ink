=== fireteacher ===

= firequest_start
Fire Teacher: Hello there. The Librarian sent you here right?!
Tammy: Yes! I'm here for my next task!
Fire teacher: Well. Don't expect me to be one of the nice sounding teachers like the others. 
Fire Teacher: If you follow my rules, everything will go smoothlie.
Fire Teacher: So listen carefully. 
Tammy: Uhm.. sure?
Fire Teacher: It's "Sir".
Tammy: What?
Fire Teacher: Not "WHAT"! It means "Sir"! Got it?
Tammy: Yes Sir! 
Tammy: He's so scary.. #thought
Fire Teacher: So.. Briefly about the element Fire. 
Fire Teacher: It's hot, aggressive and dangerous. These are the main things you should know about it.
Fire Teacher: If you're not carefull with it, you'll end up like me. 
Fire Teacher: Now listen, for your task you'll learn how to use it. 
Tammy: Yes Sir!
Fire Teacher: You need to focus, concentrate on you breathing and think about your target and where you want to hit it.
Fire Teacher: Got it?!
Tammy: Yes Sir! 
Fire Teacher: Good. I hope so. 
Fire Teacher: Then go to the marks on the floor and try it out. 
Fire Teacher: Try to hit the Target right in the middle. 
Tammy: Yes Sir! 
Tammy: I'm way to scared to say something else.. #thought
~ Unity_Event("quest_start")
-> END

= firequest_running
{Get_State("target_1") and Get_State("target_2") and Get_State("target_3"): {Unity_Event("firequest_end")} -> firequest_delivering}
Fire Teacher: What's the problem? Forgot what I told you? 
Fire Teacher: Focus, breathing, target, hit. 
Fire Teacher: What is so hard to understand?
-> END

= firequest_delivering
Fire Teacher: Well.. 
Fire Teacher: I don't say it that often.. but you did a great job!
Tammy: Thank you sir! 
Fire Teacher: I'm done with you for today.
Fire Teacher: Go to your next task. Talk to the Water Teacher next to the big cauldron. 
Tammy: Yes sir! 
Tammy: Finally I can go somewhere else... #thought
-> END

= firequest_finished
Fire Teacher: You're done here. Go make your next task!
-> END