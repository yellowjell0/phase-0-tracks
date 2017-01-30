// method: longestWord
// input: array
// steps: declare maxVal as 0,
// declare result as 0,
// iterate through the array using a conditional. 
// If the length of the string is larger than the max value, the string length becomes
// the max value, and the result becomes the string.
// output: string


// method: keyValueCheck
// input: 2 hashes
// steps: declare keys to equal an array of the keys of hash1,
// loop through the keys array the amount of the length of the keys array starting at the 0 index,
// using a conditional, if the key of the hash1 is equal to the key of hash2,
// return true, otherwise, return false
// output: boolean

// method: generateTestData
// input: integer
// steps: the randomInt function returns a random number with no decimal.
// alphabet is declared as a string 
// array is declared as an empty array
// loop through the integer argument as long as it is greater than 0
// string is declared as an empty string
// randomLength is declared as the randomInt function with a max of 10.
// As long as the randomLength is not equal to zero, declare a random letter
// using the randomInt function on the apphabet with the length of the alphabet as 
// the argument minus one, then set the string value to as many random letters as the 
// loop allows
// Push the string into the array, and return it
// output: string

function longestWord(array) {
  var maxVal = 0;
  result = "";
  array.forEach(function(string) {
  if (string.length > maxVal) {
    maxVal = string.length;
    result = string;
  }
  });
  console.log(result);
}


function keyValueCheck(hash1,hash2) {
  var keys = Object.keys(hash1);
  for (var i = 0; i < keys.length; i++) {
    var key = keys[i];
    if (hash1[key] == hash2[key]) return true;
  }
  return false;
}

var hash1 = {name: "Steven", age: 5};
var hash2 = {name: "Tamir", age: 54};

keyValueCheck(hash1,hash2);


function generateTestData(n) {
  function randomInt(max) {
    return Math.floor(Math.random() * max) + 1;
  }
  var alphabet = "abcdefghijklnmopqrstuvwxyz"
  var array = [];
  for (var i = 0; i < n; i++) {
    var string = "";
    randomLength = randomInt(10);
    for (var x = 0; x < randomLength; x++) {
      randomLetter = alphabet[randomInt(alphabet.length) -1];
      string += randomLetter;
    }
    array.push(string);
  }
  return array;
}

  //Generates an array, prints the array(*10), feeds the array to longestWord, and prints the result.
for (var i = 0; i < 10; i++) {
  var testData = generateTestData(4);
  console.log(testData);
 longestWord(testData);
  
  // Test longestWord
var words = ["long phrase","longest phrase","longer phrase"];
longestWord(words);
var array1 = ["beetle", "juice", "beetlejuice"]
longestWord(array1);



  // Test keyValueCheck
  var obj1 = {name: "Steven", age: 54};
var obj2 = {name: "Yamir", age: 54};
console.log(keyValueCheck(obj1, obj2));
var obj2 = {name: "Sandy", age: 200};
console.log(keyValueCheck(obj1, obj2));

