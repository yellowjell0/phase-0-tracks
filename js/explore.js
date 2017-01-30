// function and methods: reverse (.length)
// input: string
// steps: declare x as an empty string
// i begins at the last index and loops until it gets to the 0 index
// x is equal to the string with the indexes mztching the i loop
// the result is x

// output: string
function reverse(string) {
 var x = '';
 for (var i = string.length - 1; i >= 0; i--)
 x += string[i];
 return x;
}
reverse("hello")

var array = []
array.push(reverse("hello"))


if (array.length < 5){
console.log(array)
}
