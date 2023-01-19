=== cauldron ===

= nothing
Tammy: I'm not sure what to do here. #thought
Cauldron: blubber #thought
-> END

=berry_in
Tammy: Here it goes. I hope it won't take too long. #thought
Cauldron: blubber #thought
-> END

= cooking_1
Tammy: Is it done?
Cauldron: blubber #thought
Tammy: Hello?
Cauldron: It's not done yet.
//-> cooking_2
-> END

= cooking_2
Tammy: Is the potion done?
Cauldron: What potion?
Tammy: My healing potion? 
Cauldron: Ahh yes.
Tammy: So is it done?
Cauldron: No not yet.
//-> cooking_3
-> END

= cooking_3
Tammy: And now?
Cauldron: blubber #thought
Cauldron: Still cooking.
//-> cooking_done
-> END

= cooking_done
Tammy: Is it done now?
Cauldron: blubber #thought
Tammy: Please I need this potion.
Cauldron: I guess it's done.
Tammy: Are you sure?
Cauldron: I think so.
Tammy: Ok, I take it. 
~ Unity_Event("water_list_cooked")
-> END

= done 
Tammy: I don't need it anymore. #thought
-> END