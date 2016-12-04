class Todo_list

	def get_items
		@get_items = ["do the dishes", "mow the lawn"]
	end

	def add_item(item)
	  get_items.push(item)
	 
	end
	  
	  
	def delete_item(x)
		get_items.delete_at(x)
		p @get_items
	end

		def retrieve_item(x)
		get_items[x]
end

end