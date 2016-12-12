// method: longestPhrase
// input: array
// steps: set vavue for max, set return, iterate through each index of the array, 
// output:




function longestWord(array) {
  var maxVal = 0;
  result = "";
  array.forEach(function(s) {
  if (s.length > maxVal) {
    result = s;
    maxVal = s.length;
  }
  });
  console.log(result);
}



// method: keyValueCheck
// input: 2 hashes
// steps: iterate through a hash to see if there are any equivalents in the pair of hashes and return a boolean based on the results
// output: boolean
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


// method: randomNumber
// input: integer
// steps: take an integer as an argument and iterate through an array of strings according to the integer. Then return a random string that is the length of the argument, but random letters of the string
// output: string

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
  console.log(longestWord(testData));
}
  
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

