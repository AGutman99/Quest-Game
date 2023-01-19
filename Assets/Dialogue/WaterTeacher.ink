=== waterteacher ===

= idle
Water Teacher: Hm.. what if I try to add some Cherryleaves the next time?
Water Teacher: Or some Light flakes?
Water Teacher: That sounds great!
Water Teacher: Hmm? I do you need something?
Water Teacher: Im busy right now. I'm sorry. 
-> END

= waterquest_start
Water Teacher: Oh hello there.
Water Teacher: You are the new one right?
Tammy: Yes! I am.
Water Teacher: You look so adoreable in your cute little skirt.
Tammy: Thank you so much!
Water Teacher: So you're done with Air and Fire right?
Tammy: That's right!
Water Teacher: Great! I'll teach you something about the Element Water. 
Water Teacher: We brew all kinds potions. 
Water Teacher: But for our potions we need ingridients.
Water Teacher: Therefor we work close togeher with the Earth Element. Since without their ingredients we wouldn't be able to make our Potions. 
Water Teacher: You will brew your own potion today. 
Tammy: Oh really? Exciting!
Water Teacher: It'll be a just a simple healing Potion that can heal small wounds or scratches. 
Water Teacher: I have almost all ingridients here. Only one is left. 
Water Teacher: It's a pink tree lechee. 
Water Teacher: Go to the Earth Teacher and ask if you can pick one from their garden.
Tammy: Sure! I'll get it for you.
~ Unity_Event("water_list_start")
-> END

= waterquest_pending
Water Teacher: Do you have the pink tree lechee?
Water Teacher: You can get it from the Earth Teacher.
Tammy: No.. Sorry.
-> END

= waterquest_running
Tammy: I have the pink tree lechee!
Water Teacher: Great! Here are the other ingridients.
Water Teacher: A sour sprout, sweet blue lemon and your pink tree lechee. 
Water Teacher: Put everything in the couldron and wait a little bit until it's done. 
Water Teacher: It's a magical couldron so it will tell you when your potion is done.
Water Teacher: Just ask it sometimes.. it's forgetful.
Tammy: I've never seen a speaking cauldron before. #thought
Tammy: I'll be right back!
~ Unity_Event("water_list_berry")
-> END

= waterquest_progress
Water Teacher: Remember to ask the cauldron a few times if it's ready.
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
Tammy: So what's next?
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
Tammy: Yes. I need a Growth Potion for my current task. 
Water Teacher: I understand. Here you go. 
Tammy: Thank you so much! 
~ Unity_Event("earth_list_goback")
-> END