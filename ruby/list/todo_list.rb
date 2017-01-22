class TodoList
	
	def initialize(array)
		@array = array
	end

	def get_items
		@array
	end

	def add_item(new_item)
		@array.push(new_item)
	end

	def delete_item(item_to_delete)
		@array.delete(item_to_delete)
	end

	def get_item(int)
		@array[int]
	end

end


# list = TodoList.new(["a", "b"])
# list.get_items