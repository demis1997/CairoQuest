# The Room

Great job opening that seal future Cairsetian but do not think for a second that it will be easier. We now have to set up the room for you, make it too hard and your career as a Cairsetion will come to an end before you cast your first "while" curse.. not to worry though, I am sure you will be just fine! Just follow my instructions below and you will have your first taste of combat!

Let's open the next file in the quest series `_src/room.cairo`,  and see what we are dealing with.
Oh Goodness!
The previous mage must have scrambled it up in his rage, but not to worry, we can still learn from this.
In this file, we are introduced to the concept of Structs and the importance of clean code.

In Cairo, we have two ways of creating "objects": using structs or using methods.
Methods work similarly to functions, meaning they can have a return value and parameters. They are even created using the same `fn` keyword.
Structs, on the other hand, are created using the `struct` keyword and work similarly to tuples. A struct can contain multiple different values of different types, the difference being that we can name each of our values within a struct.
The examples below showcase how to create a struct and how to "fill it up"!

 ~~~ 
struct ourStruct {
    ourBool: bool,
    ourAge: u64,
}

let ourVariable = ourStruct {
    ourBool: true,
    ourAge: 1
};
 ~~~ 
## Your Task

Your task is to fix the mess the previous mage made and complete the room function to return a struct with the values and types below:
- `bool activated`
- `felt252 battle_mode: 'Tutorial'`
- `felt252 enemy: 'Boars'`
- `u64 years: 1`

