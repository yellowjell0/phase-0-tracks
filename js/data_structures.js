var colors = ["yellow", "green", "red", "orange"];
var names = ["Ted", "Brandon", "Grace", "Nick"];

// colors.push("violet");
// names.push("Henry");

var hash = {name: "", color: ""};


for(var i = 0; i < names.length; i++) {
colors.forEach; {
hash.name = names;
hash.color = colors;
console.log("The horse's name is "  + hash.name[i] + " and the color is " + hash.color[i] + ".")
}
}

// print
console.log(hash)

// constructor function
function Car(brand, age, color) {
	this.brand = brand;
	this.age = age;
	this.color = color;
	this.honk = function() {
		console.log("Honk!")
	};
};
// driver code
var new_car = new Car("Ford", 8, "Black");
console.log(new_car)
new_car.honk()
var second_car = new Car("Toyota", 7, "Red");
console.log(second_car)