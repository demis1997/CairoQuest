# Walkthrough: Training

In this Quest our first objective is to complete the setter functions for each of the boars. Their values are given to us so we just need to follow the example in the quest for each of the boars. We need to not the use of `mut` here since our variables will be mutable like this:
 ~~~  
fn setAlphaBoar () -> Boar {
 let mut alphaBoar = Boar {
    id:1, attack: 20, health: 80, xp_on_death: 100,
    };
    return alphaBoar;
}
fn setDoubleHeadedBoar () -> Boar {
 let mut doubleHeadedBoar = Boar {
    id:2, attack: 10, health: 40, xp_on_death: 50,
    };

    return doubleHeadedBoar;
}

fn setFightingStance () -> Boar {
 let mut stance = Fighter {
    id:2, attack: 10, health: 40, xp_on_death: 50,
    };

    return stance;
}

fn setSimpleBoar () -> Boar {
 let mut simpleBoar = Boar {
    id:3,attack: 5, health: 20, xp_on_death: 25,
    };
    return simpleBoar;
}
 ~~~  

In a similar fashiom, we must complete the setter function for the player for which the values are given to us:

~~~  
fn setPlayer () ->  Player {
 let mut player = Player {
       attack:10, health: 200, level: 1, xp:0,
    };
    return player; 
}
~~~  



Lastly, we need to implement the battle functions, for this we can follow the example of the first battle function to complete the other 2:
~~~  
fn battle_alpha_boar(mut player: Player) -> Player {
    let mut boar = setAlphaBoar();
    player.health = player.health - boar.attack;
    boar.health = boar.health - player.attack;
    if boar.health == 0 {
        player.xp += boar.xp_on_death;
        level_up(ref player)
    }

    return player;
}
~~~  
~~~  
fn battle_simple_boar (mut player: Player) -> Player {
    let mut boar = setSimpleBoar();
    player.health = player.health - boar.attack;
    boar.health = boar.health - player.attack;
    if boar.health == 0 {
        player.xp += boar.xp_on_death;
        level_up(ref player)
    }

    return player;
}
 ~~~  
