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
//implement with following attributes:
    //id:1, attack: 20, health: 80, xp_on_death: 100,
    fn setAlphaBoar () -> Boar {


    };


//implement with following attributes:
// id:2, attack: 10, health: 40, xp_on_death: 50,
fn setDoubleHeadedBoar () -> Boar {

}
//implement with following attributes:
// id:3,attack: 5, health: 20, xp_on_death: 25,
fn setSimpleBoar () -> Boar {

}
//implement with following attributes:
// attack:10, health: 200, level: 1, xp:0,
fn setPlayer () ->  Player {

}

//Create Methods taking into considarion references and mutability for the above functions:



fn level_up(ref player: Player) {
    while player.xp >= 50 && player.level < 20 {
        player.xp -= 50;  
        player.level += 1;
    }
}



//Implement Battling functions for each boar utilizing the players stats and the level up function
