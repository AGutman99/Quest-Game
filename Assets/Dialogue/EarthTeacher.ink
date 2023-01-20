=== earthteacher ===

= idle 
Earth Teacher: Lalala.. Mhh.. Hmmhmm...
Earth Teacher: *working* #thought
Tammy: Maybe I should'nt disturb her. #thought
-> END

= waterquest_berry
Tammy: Hi! The Water Teacher send me to you and...
Earth Teacher: *working*
Tammy: and... I need a pink tree lechee. Do...
Earth Teacher: HUH?!
Earth Teacher: Where du you come from? You scared me!
Tammy: I'm so sorry! Honestly.
Earth Teacher: No it's fine. I'm always so focused on my work. 
Earth Teacher: So what do you need?
Tammy: I need a pink tree lechee. I saw a lot outside.
Earth Teacher: Yeah. But they're not ripe yet.
Earth Teacher: Here you have one. 
Tammy: Thank you so much!
Earth Teacher: You're welcome. See you later. 
~ Unity_Event("waterquest_goback")
-> END

= earthquest_start
Earth Teacher: *working* #thought
Tammy: Uhm... Hello? 
Earth Teacher: *working* #thought
Tammy: Hello I'm sorry, it's me again ... 
Earth Teacher: Uh hello there! I didn't recognize you. Sorry.
Earth Teacher: How can I help you?
Tammy: Yes! Hi! I'm new here and the Water Teacher told me that you have a task for me.
Earth Teacher: Hmm.. do I? I know.. there was something...
Earth Teacher: Yeah! I remember. I have to tell you something about our Element.
Earth Teacher: Soo.. about the Earth Element. 
Earth Teacher: We're pretty calm and into our work. We are in close contact with nature, plants and animals. 
Tammy: Oh I love animals!
Earth Teacher: That's great.
Earth Teacher: But for today you'll learn something about plants.
Earth Teacher: You'll plant your own Sunflower today.
Tammy: Amazing! 
Earth Teacher: So here is your seed. Go outside and plant it.
~ Unity_Event("earth_list_start")
-> END

= earthquest_pending
Earth Teacher: Did you plant your seed?
Tammy: Uhm... no. 
-> END

= earthquest_progress
Tammy: I planted the Sunflowerseed.
Earth Teacher: Great! But since it'll take a long time to grow, we can speed up the progress.
Tammy: How?
Earth Teacher: You already learned that the Water Element can make many different potions with different effects. 
Earth Teacher: Right?
Tammy: Right!
Earth Teacher: That means you have to go to the Water Teacher and ask them for a Growth Potion. 
Tammy: Really? Oh it's so exciting!
Earth Teacher: Yes. But it's for learning purposes only. 
Earth Teacher: We try to grow our plants as naturally as possible. 
Tammy: Of course!
Tammy: I'll be right back. 
~ Unity_Event("earth_list_potion")
-> END

= earthquest_wip
Earth Teacher: Do you have the Potion?
Tammy: Not yet.
-> END

= earthquest_delivering
Tammy: I got the Growth Potion.
Earth Teacher: Good. Go use it on your plant. 
~ Unity_Event("earth_list_grow")
-> END

= earthquest_used
Earth Teacher: Did you use the potion?
Tammy: Uhm... no. 
-> END

= earthquest_done
Tammy: Oh it grew so fast! That's amazing.
Earth Teacher: Isn't it? 
Earth Teacher: So I think you're done with your tasks for today.
Earth Teacher: Please go back to the Librarian.
Earth Teacher: She'll tell you everything about the next step. 
Tammy: Alright! Thank you so much. 
~ Unity_Event("earth_list_gotolib")
-> END