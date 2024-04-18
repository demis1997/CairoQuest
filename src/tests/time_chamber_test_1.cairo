use src::time_chamber::time_chamber;
use src::time_chamber::enter_code;
use src::time_chamber::enter_district;
use src::time_chamber::open_chamber;
#[test]
fn test_time_chamber(){   

let result = time_chamber(0); 
assert_eq!(result, 10);

}

#[test]
fn test_enter_code(){   

let result = enter_code(0); 
assert_eq!(result, 42);

}
#[test]
fn test_enter_district(){   

let result:ByteArray = enter_district(""); 
assert_eq!(result, "Amireya");

}

#[test]
fn test_open_chamber(){   

let result:bool = open_chamber(true); 
assert_eq!(result, true);

}
 
 
 
