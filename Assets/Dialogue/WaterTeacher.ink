=== waterteacher ===

= idle
Water Teacher: Hm... What if I try to add some cherry leaves next time?
Water Teacher: Or some light flakes?
Water Teacher: That sounds great!
Water Teacher: Hmm? Do you need something?
Water Teacher: Im busy right now. I'm sorry. 
-> END

= waterquest_start
Water Teacher: Oh, hello there.
Water Teacher: You are the new one, right?
Tammy: Yes! I am.
Water Teacher: You look so adorable in your cute little skirt.
Tammy: Thank you so much!
Water Teacher: So you're done with Air and Fire right?
Tammy: That's right!
Water Teacher: Great! I'll teach you something about the Water element. 
Water Teacher: We brew all kinds of potions. 
Water Teacher: But for these we need ingredients.
Water Teacher: Therefore, we work closely with the Earth element, since without their ingredients we would not be able to make our potions.  
Water Teacher: You will brew your own potion today. 
Tammy: Oh really? Exciting!
Water Teacher: It will be just a simple healing potion that can heal small wounds or scratches. 
Water Teacher: I have almost all ingredients here. Only one is left. 
Water Teacher: It's a pink tree lechee. 
Water Teacher: Go to the Earth Teacher and ask if you can pick one from their garden.
Tammy: Sure! I'll get it for you.
~ Unity_Event("water_list_start")
-> END

= waterquest_pending
Water Teacher: Do you have the pink tree lechee?
Water Teacher: You can get it from the Earth Teacher.
Tammy: No... I am sorry.
-> END

= waterquest_running
Tammy: I have the pink tree lechee!
Water Teacher: Great! Here are the other ingredients.
Water Teacher: A sour sprout, a sweet blue lemon and your pink tree lechee. 
Water Teacher: Put everything in the cauldron and wait a little bit until it's done. 
Water Teacher: It's a magical cauldron so it will tell you when your potion is done.
Water Teacher: Just remind it sometimes.. it's forgetful.
Tammy: I've never seen a speaking cauldron before. #thought
Tammy: I'll be right back!
~ Unity_Event("water_list_berry")
-> END

= waterquest_progress
Water Teacher: Remember to ask the cauldron a few times whether it is ready.
Water Teacher: It's pretty forgetful. 
-> END

= waterquest_delivering
Tammy: The potion is done!
Water Teacher: Great! Let me see.
Water Teacher: Mh... 
Water Teacher: Huh...
Water Teacher: Yeah...
Tammy: Is it alright? 
Water Teacher: It's amazing! You did a great job for your first time!
Tammy: Thank you sooo much! 
Tammy: So, what's next?
Water Teacher: Well there is only one teacher left. It's the Earth teacher.
Water Teacher: Please go there for your last task.
Tammy: Ok! See you!
Water Teacher: Good luck!
~ Unity_Event("water_list_finished")
-> END

= waterquest_done
Water Teacher: You did amazing! Have a nice day.
-> END

= earthquest_potion
Tammy: Hi! It's me again.
Water Teacher: Hello! Do you need something?
Tammy: Yes. I need a growth potion for my current task. 
Water Teacher: I understand. Here you go. 
Tammy: Thank you so much! 
~ Unity_Event("earth_list_goback")
-> END