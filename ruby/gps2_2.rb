# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # [fill in any steps here]
  # set default quantity
  # print the list to the console [can you use one of your other methods here?]
# output: [what data type goes here, array or hash?]
def make_grocery_list!(item)
  grocery_list = {}
  grocery_item = item.split(' ')
grocery_item.each do |i|
grocery_list[i] = 3
 end
 p grocery_list
end
# make_grocery_list!("carrots apples cereal pizza")

# grocery_list = ["squash", "cabbage", "chicken", "milk"]





# Method to add an item to a list
# input: item name and optional quantity
# steps:
# output:
 def add_item_to_list!(grocery_list, grocery_item)
  grocery_list << grocery_item
  p grocery_list
end

# add_item_to_list!(grocery_list, "carrots")
 
# Method to remove an item from the list
# input:
# steps:
# output:
def remove_item_from_list(grocery_list,item_to_delete)
grocery_list.delete(item_to_delete)
p grocery_list
 end

  # remove_item_from_list(grocery_list, "carrots")
  


# Method to update the quantity of an item
# input:
# steps:
# output:

def update_quantity(grocery_list,item,new_quantity)
  grocery_list.store(item,new_quantity)
  p grocery_list
end
grocery_list = {
  "milk" => 1,
  "eggs" => 12,
  "butter" => 1,
  "bread" => 1,
  "cereal" => 2
}

update_quantity(grocery_list,"milk",4)

# Method to print a list and make it look pretty
# input:
# steps:
# output:
def print_list(grocery_list)
  grocery_list.each do |x,y|
    puts "Make sure to pick up #{x}. You'll need #{y} of these."
  end
end
print_list(grocery_list)




