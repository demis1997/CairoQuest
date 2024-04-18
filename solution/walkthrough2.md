# Walkthrough: The Room



The first mistake is that  we should have a comma after the boolean instead of a semicolon
Secondly, the battle_mode should be of type `felt252` and not `fealt252`  
Last but not least, the `years` should be of type  `u64` instead of  `u6000`  
Now we need to complete the room function which now only returns  `sesion1`. To do this, we need to create the variable  `session1` first and equate it to the  `Setup` struct with the following variables and types:

`active: true, battle_mode: 'Tutorial', enemy: 'Boars', years: 1`

Our end function should look similar to this:

 ~~~ 
fn room () -> Setup {
 let session1 = Setup {
        active: true, battle_mode: 'Tutorial', enemy: 'Boars', years: 1
    };
return session1;
}
 ~~~  