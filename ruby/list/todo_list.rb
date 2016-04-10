class TodoList
  def initialize(list)
    @list = list
  end

  def get_items
    @list
  end

  def add_item(new_item)
    @list.push(new_item)
  end

  def delete_item(delete_item)
    @list.delete(delete_item)
  end

  def get_item(index_number)
    @list.fetch(index_number)
  end
end
