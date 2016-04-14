// write a function that takes an array of words or phrases and returns the longest word in the array.
// decalre a new function
// it should take an array as a parameter
// it should look through the entire array and find which item in the array is longest
//it should return the content of that longest item
var my_Array = ["Jennifer", "Theron", "Ethan", "Barbarasam", "Sam"];
var currentLongest = 0;
var longestLongest;

function whats_Longest(my_Array) {
  for (var i = 0; i < my_Array.length; i++) {
    if (my_Array[i].length > currentLongest) {
      currentLongest = my_Array[i].length;
      longestLongest = my_Array[i];
    }
  }
  return longestLongest;
}

console.log(whats_Longest(my_Array))
