









require_relative 'todo_list'

describe Todo_list do
  let(:list) { Todo_list.new }


  it "stores the list items given on initialization" do
    expect(list.get_items).to eq ["do the dishes", "mow the lawn"]
  end

  it "adds an item to the list" do
    
    expect(list.add_item("mop")).to eq ["do the dishes", "mow the lawn", "mop"]
  end

  it "deletes an item" do
    expect(list.delete_item(0)).to eq ["mow the lawn"]
  end

  it "retrieves an item by index" do

    expect(list.retrieve_item(0)).to eq "do the dishes"
  end
end