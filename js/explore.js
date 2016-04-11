// declare a function
// the function should take a string as a parameter
// pull apart the string into individual letters so "hello" becomes "h", "e", etc.
// store in an array
// reverse the order of the letters in the array
// join the letters back together again into a new string
// return the new string

function reverse(str){
  var split = str.split("");
  console.log(split);
  var reversed = split.reverse();
  console.log(reversed);
  var new_String = reversed.join("");
  console.log(new_String);
}

  reverse("Jennifer")