struct Setup {
    active: bool,
    battle_mode: felt252,
    enemy: felt252,
    years: u64,
}
fn room () -> Setup {
 let session1 = Setup {
        active: true, battle_mode: 'Tutorial', enemy: 'Boars', years: 1
    };
return session1;
}
