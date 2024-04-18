# Walkthrough: Time Chamber

The file contains 4 functions and to complete the quest you need to create a variable for each function with a value corresponding to the data type and the values given in our quest description.

For the first function we need to include  `let code = 42;` since it returns code, we crate a variable with the same name

Similarly for `enter_district` we need to add `let district: ByteArray = "Amireya";`  which corresponds to the variable name we are returning and the value given during the quest

fn open_chamber follows a similar approach and expects to return a boolean set to true: `let open: bool = true;`

Lastly, time_chamber requires that the value of seal_result is 10 which means we have to introduce a variable with value 6 called input_energy to make up 10: `let input_energy = 6;` 

