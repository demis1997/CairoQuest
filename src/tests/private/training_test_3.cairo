use src::training::setDoubleHeadedBoar;
use src::training::setAlphaBoar;
use src::training::setSimpleBoar;
use src::training::setPlayer;
use src::training::level_up;

#[test]
fn test_setAlphaBoar(){   
  let boar = setAlphaBoar(); 
  assert_eq!(boar.id, 1, "ID should be 1");
        assert_eq!(boar.attack, 20, "Attack should be 20");
        assert_eq!(boar.health, 80, "Health should be '80'");
        assert_eq!(boar.xp_on_death, 100, "XP should be 100");

}
#[test]
fn test_setDoubleHeadedBoar(){   
  let boar = setDoubleHeadedBoar(); 
  assert_eq!(boar.id, 2, "ID should be 2");
        assert_eq!(boar.attack, 10, "Attack should be 10");
        assert_eq!(boar.health, 40, "Health should be '40'");
        assert_eq!(boar.xp_on_death, 50, "XP should be 50");

}

#[test]
fn test_setSimpleBoar(){   
  let boar = setSimpleBoar(); 
  assert_eq!(boar.id, 3, "ID should be 3");
        assert_eq!(boar.attack, 5, "Attack should be 5");
        assert_eq!(boar.health, 20, "Health should be '20'");
        assert_eq!(boar.xp_on_death, 25, "XP should be 25");

}
  #[test]
fn test_setPlayer(){   
  let player = setPlayer(); 
  assert_eq!(player.attack, 10, "Attack should be 10");
        assert_eq!(player.health, 200, "Health should be 200");
        assert_eq!(player.level, 1, "Level should be '1'");
        assert_eq!(player.xp, 0, "XP should be 0");

}
//   #[test]
// fn test_levelUp(){   
//   let levelup = level_up(); 
//         assert_gt!(player.level, 1, "Level should be more than'1'");

// }