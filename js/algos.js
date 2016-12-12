// method: longestPhrase
// input: array
// steps: set vavue for max, set return, iterate through each index of the array, 
// output:




function longestPhrase(array) {
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
var words = ["long phrase","longest phrase","longer phrase"];

longestPhrase(words);