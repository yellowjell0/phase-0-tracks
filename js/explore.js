// function and methods: reverse (.length)
// input: string
// steps: loop the index back to front for the argument
// output: sting
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
