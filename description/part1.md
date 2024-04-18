# Time Chamber

## Prelude
I greet you traveller! It is a fine life we lead here in Cairset and Cairsetians are treated with respect and dignity.
However as with any skill, It will take time to master. 
Lucky for you young one, with todays' technology, we can use the time chamber to begin our training. 1 year inside the chamber is 1 second outside of it!
 Grab your staff and let's learn some basic fighting techniques... but first! We must open the Chamber!

## Preface 
Before we begin, make sure that you have everything you need installed, you can follow the installation guide here if you feel lost: [Cairo Installation Guide](https://book.cairo-lang.org/ch01-01-installation.html)

Feel free to also use the **Cairo book** as a guide in case you need help solving the quests. Think of it as your field manual!
[Cairo Book](https://book.cairo-lang.org/)

## Quest
Let's begin by having a look at `_src/time_chamber.cairo`. We can see the file contains the following functions: `enter_code`, `enter_district`, `open_chamber`, and `time_chamber`. 
 

Functions in Cairo are created using the `fn` keyword followed by the function name, the function parameters, and lastly the function body.
Our functions highlight the different types of variables that we can use in Cairo which are: `felt252`, `bool`, `bytesArray`, and `u32`.
- The `bool` type is binary, indicating either true or false. 
- The `bytesArray` represents strings enclosed in double quotes, similar to Strings in other programming languages (single-quoted strings also exist similar to `char` vs `strings` in other programming languages)
- The `u32` type is an integer that in our case utilizes up to 32 bits, you can utilize up to 256 bits using the "u" key followed by the bits amount.
- Lastly, `felt252` is used as a default field element but is generally not recommended due to security concerns.

Note: There is one more variable type called `tuple` which allows us to group together multiple values of different value types.


You can define variables using different types as shown below.

### Example:
 ~~~ 
let char: 'D';
let name: ByteArray = "Dastan";
 ~~~ 
## Your Task
Your task is to read the passage below and return the correct values and value types for each of the functions.

In the land of Cairset, deep in the valleys of `Amireya`, there was a chamber capable of bending time.
It is said that the seal would open for those that speak the meaning of life, `42`.
Might and energy must flow into the chamber to generate `10` kliatons of essence and break the seal.