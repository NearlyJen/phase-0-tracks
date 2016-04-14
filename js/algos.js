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

console.log(whatsLongest(["Jennifer", "Theron", "Ethan", "Barbarasam", "Sam"]));

console.log(whatsLongest(["Joe", "Nietzsche", "Buddy", "Fern"]));
