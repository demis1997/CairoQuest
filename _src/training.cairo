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

