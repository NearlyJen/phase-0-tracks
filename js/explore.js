// declare a function
// the function should take a string as a parameter
// pull apart the string into individual letters so "hello" becomes "h", "e", etc.
// store in an array
// reverse the order of the letters in the array
// join the letters back together again into a new string
// return the new string

function reverse(str) {
  var reversed_str = '';
  for (var i = str.length - 1; i >= 0; i--)
    reversed_str += str[i];
    return reversed_str
}

  if (1 == 1){
    console.log(reverse("Jennifer"));
  }
  else {
    console-log("No reverse string for you");
  }

