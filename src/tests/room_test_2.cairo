use src::room::room;

#[test]
fn test_room(){   
  let setup = room(); 
  assert_eq!(setup.active, true, "Active should be true");
        assert_eq!(setup.battle_mode, 'Tutorial', "Battle mode should be 'Tutorial'");
        assert_eq!(setup.enemy, 'Boars', "Enemy should be 'Boars'");
        assert_eq!(setup.years, 1, "Years should be 1");

}
 