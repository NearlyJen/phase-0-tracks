// write a function that takes an array of words or phrases and returns the longest word in the array.
// decalre a new function
// it should take an array as a parameter
// it should look through the entire array and find which item in the array is longest
// by comparing it to the length of the item before it
// after goign through every item in the array
//it should return the content of the longest item


function whatsLongest(my_Array) {
  var longestLongest = "";
  var currentLongest = 0;
  for (var i = 0; i < my_Array.length; i++) {
    if (my_Array[i].length > currentLongest) {
      currentLongest = my_Array[i].length;
      longestLongest = my_Array[i];
    }
  }
  return longestLongest;
}


// make a function that takes two objects
// loop through the objects and compare
// to see if any of object 1's key-value pairs are equal to
// object 2's key-value pairs
// return true if the loop finds one
// implemented lame-o solution because i can't work out the loop

var obj1 = {age: 42, name: "Jennifer", weight: 175};
var obj2 = {age: 44, name: "Theron", weight: 175};

function doTheyMatch (obj1, obj2) {
    if (obj1.age == obj2.age) {
      return true;
    }
     else if (obj1.name == obj2.name){
      return true;
     }
     else if (obj1.weight == obj2.weight) {
      return true;
     }
    else {
      return false;
    }
}



doTheyMatch(obj1, obj2);

console.log(whatsLongest(["Jennifer", "Theron", "Ethan", "Barbarasam", "Sam"]));

console.log(whatsLongest(["Joe", "Nietzsche", "Buddy", "Fern"]));
