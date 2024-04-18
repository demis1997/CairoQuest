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
//bad
#[derive(Drop)]
struct Boar {
    id: u8,
    attack: u8,
    health: u8,
    xp_on_death:u8,
}
#[derive(Drop)]
struct Player {
    attack: u8,
    health: u8,
    level:u8,
    xp:u8,
}
//implement with attributes
fn setAlphaBoar () -> Boar {
    };

}
//implement with attributes
fn setDoubleHeadedBoar () -> Boar {

}
//implement with attributes
fn setSimpleBoar () -> Boar {

}
//implement with attributes
fn setPlayer () ->  Player {

}

fn level_up(ref player: Player) {

        player.xp -= 50;  
        player.level += 1;

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

fn battle_alpha_boar(mut player: Player) -> Player {
//implement function
    }

    return player;
}

fn battle_simple_boar(mut player: Player) -> Player {

//implement function
}



//good
#[derive(Drop)]
struct Boar {
    id: u8,
    attack: u8,
    health: u8,
    xp_on_death:u8,
}
#[derive(Drop)]
struct Player {
    attack: u8,
    health: u8,
    level:u8,
    xp:u8,
}
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

fn setSimpleBoar () -> Boar {
 let mut simpleBoar = Boar {
    id:3,attack: 5, health: 20, xp_on_death: 25,
    };
    return simpleBoar;
}
//create setter function
fn setPlayer () ->  Player {
 let mut player = Player {
       attack:10, health: 200, level: 1, xp:0,
    };
    return player; 
}

//or have user create method and have a player that levels up depending on difficulty
#[generate_trait]
impl PlayerImpl of PlayerTrait {
//fn setPlayer
}

fn level_up(ref player: Player) {
        player.xp -= 50;  
        player.level += 1;
    
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


