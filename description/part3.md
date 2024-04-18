# Training

Great job! We have reached the final part of your training, combat! Now that your are inside the chamber lets spawn some enemies to practice
Since we set up the room previously, we wont be dealing with anything too serious... oh no!! it glitched!! We were supposed to be battling simple boars!
What's worse is that we cannot damage them unless their holograms are fully envisioned. We will need to put all of our knowledge to use in order to beat them!

The next file in the quest series  `_src/training.cairo` combines functions, structs and variable types with another intricacy of Cairo, function ownership and mutability.
Variables in Cairo have an owner and can only be "used" once, as soon as a variable is used, it has to be destroyed. 
A variable does not keep its updated state outside of a function or outside of a given scope and instead holds a different value in each different scope.
When a variable moves from one function to another, the original scope is destroyed and can no longer be used
Variables in Cairo can also be mutable, and to make them mutable, we use the `mut` keyword.

//Note to NodeGuardians team, here we can make the quest harder by focusing more on the concept of variable destruction since in my example, I do not focus on this and just test the users knowledge thus far.

To complete this quest, we have to fix the glitch in the system by 
1. Completing the setter functions for each of the boars.
2. Completing the setter function for our player.
3. Completing the battle functions for each boar.


Use the examples below to complete the setter and battle functions along with your knowledge from the previous lessons:
 ~~~ 
fn setClass () -> Human {
 let mut Tank_Warrior = Human {
    id:1, attack: 20, health: 80, level: 11, name: Caspian
    };
    return Tank_Warrior;
}

fn battle_double_headed_boar(mut player: Player) -> Player {
    let mut boar = setDoubleHeadedBoar();
    player.health = player.health - boar.attack;
    boar.health = boar.health - player.attack;
    if boar.health == 0 {
        player.xp += boar.xp_on_death;
        level_up(ref player)
    }

    return player;
}
 ~~~ 
## Your Task

Your task is to complete each of the setter functions and each of the battle functions to finalize the holograms and defeaat them!

Use the information below to complete each function:

- **AlphaBoar**: id:1, attack: 20, health: 80, xp_on_death: 100
- **DoubleHeadedBoar**: id:2, attack: 10, health: 40, xp_on_death: 50
- **SimpleBoar**: id:3, attack: 5, health: 20, xp_on_death: 25
- **Player**: attack:10, health: 200, level: 1, xp:0
