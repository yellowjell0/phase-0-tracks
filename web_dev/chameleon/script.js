console.log("The script is running!");

function addPinkBorder(event) {
  console.log("click happened! here's the click event:");
  console.log(event);
  event.target.style.border = "2px solid pink";
}

var photo = document.getElementById("lizard-photo");
photo.addEventListener("click", addPinkBorder);

var hideButton = document.getElementByTagName('button')[0];
var revealButton = document.getElementByTagName('button2')[1];

function hide() {
document.getElementById("lizard-photo").style.visibility = "hidden"

}

function reveal() {
document.getElementById("lizard-photo").style.visibility = "visible"
 }

hideButton.addEventListener("click", hide)
revealButton.addEventListener("click", reveal)
