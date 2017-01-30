# Method: print_list
# input: hash
# steps: interpolate each key and value into a string for the UI
# output: String
def print_list(grocery_list)
  grocery_list.each do |x,y|
    puts "Item: #{x}-- ##{y}"
  end
end

# Method: make_grocery_list, print_list
# input: string of items separated by spaces
# steps: value grocery_list as an empty hash, turn the items into an array, then iterate though the array to return a hash with each value being 3, print the list to the console. 
# output: hash
def make_grocery_list(items)
  grocery_list = {}
  grocery_item = items.split
  grocery_item.each do |i|
      grocery_list[i] = 1
    end
 print_list(grocery_list)
end

# make_grocery_list("carrots apples cereal pizza")


# Method: add_item_to_list
# input: hash, string and integer in that order
# steps: adds new key and value to the hash
# output: string
def add_item_to_list(grocery_list, grocery_item, quantity = 1)
  grocery_list.store(grocery_item,quantity)
  puts "I've added #{grocery_item} to the list. Please pick up #{quantity} of these."
end

 
# Method to remove an item from the list
# input: hash, string
# steps: deletes the key and value of a hash
# output: string

def remove_item_from_list(grocery_list,item_to_delete)
  grocery_list.delete(item_to_delete)
  puts "No need to pick up #{item_to_delete} anymore."
end


grocery_list = {
  "milk" => 1,
  "eggs" => 12,
  "butter" => 1,
  "bread" => 1,
  "cereal" => 2
}

# remove_item_from_list(grocery_list, "cereal")
  


# Method to update the quantity of an item
# input: hash, string, and and integer
# steps: replaces the value of the key entered as an argument
# output: string

def update_quantity(grocery_list,item,new_quantity)
  # if item on the list
  grocery_list.store(item,new_quantity)
  puts "When you pick up #{item}, make sure to grab #{new_quantity} instead."
end

# update_quantity(grocery_list,"milk",4)

# add_item_to_list(grocery_list, "falafel", 5)

grocery_list = make_grocery_list("onions rice peppers broth soy bacon")

add_item_to_list(grocery_list, "lemonade", 2)
add_item_to_list(grocery_list, "tomatoes", 3)
add_item_to_list(grocery_list, "onions", 1) 
add_item_to_list(grocery_list, "ice-cream", 4)

remove_item_from_list(grocery_list, "lemonade")

update_quantity(grocery_list, "ice-cream", 1)

print_list(grocery_list)

