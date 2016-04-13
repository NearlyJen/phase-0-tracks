var colors = ["blue", "pink", "turquoise", "red"];
var horse_Names = ["Charles", "Petunia", "Scout", "Mojo"];

colors.push("purple");
horse_Names.push("Ed");

console.log(colors)
console.log(horse_Names)

// create a new variable for the array
// loop through number of items in each group
// pair them together.

// for each index in the names array, take the name and
//make it the key, and the matching color and make it the value

var color_Horses = [];

for (var i = 0; i < colors.length; i++) {
color_Horses[horse_Names[i]] = colors[i];
}

console.log(color_Horses)

function Car(name, color, size){

  console.log("Our new car:", this);

  this.name = name;
  this.color = color;
  this.size = size;

  this.honk = function() { console.log("Honk! Honk!"); };

  console.log("CAR INITIALIZATION COMPLETE!");
}

  console.log("Let's build a car...");

  var makeCar = new Car("Steve", "Purple", "big");
  console.log(makeCar.name + " the car");

  console.log("Our car can honk");
  makeCar.honk();
  console.log("----");

  var makeAnotherCar = new Car("Theron", "pink", "small");
  console.log(makeAnotherCar.name + " the car");
  console.log("Our car can honk");
  makeAnotherCar.honk();
  console.log("----");




