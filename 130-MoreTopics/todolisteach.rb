class Todo
  DONE_MARKER = 'X'
  UNDONE_MARKER = ' '

  attr_accessor :title, :description, :done

  def initialize(title, description='')
    @title = title
    @description = description
    @done = false
  end

  def done!
    self.done = true
  end

  def done?
    done
  end

  def undone!
    self.done = false
  end

  def to_s
    "[#{done? ? DONE_MARKER : UNDONE_MARKER}] #{title}"
  end

  def ==(otherTodo)
    title == otherTodo.title &&
      description == otherTodo.description &&
      done == otherTodo.done
  end

end



class TodoList
  attr_accessor :title

  def initialize(title)
    @title = title
    @todos = []
  end

  def add(toDoItem)

    begin 
      
  raise TypeError.new("Can only add Todo objects") unless toDoItem.instance_of?(Todo)
      @todos << toDoItem
     end

   

  end

   def <<(todo)
    raise TypeError, 'can only add Todo objects' unless todo.instance_of? Todo

    @todos << todo
  end

  def size
    @todos.size
  end

  def first
    @todos.first

  end

  def last
    @todos.last

  end

  def to_a
    @todos.clone
  end

  def done?
    @todos.all? {|obj| obj.done?} 
  end

  def item_at(ind)
    @todos.fetch(ind)
  end

  def mark_done_at(ind)
    @todos.fetch(ind).done!
  end

  def mark_undone_at(ind)
    @todos.fetch(ind).undone!
  end

  def done!
    @todos.all? {|obj| obj.done!}
  end

  def shift
    @todos.shift
  end

  def pop
    @todos.pop
  end

  def remove_at(ind)
    @todos.delete_at(ind)
  end

  def to_s
    puts "---- Today's Todos ----"
    puts @todos
  end
  # rest of class needs implementation

  def each
    counter = 0
    while counter < @todos.size
      yield(@todos[counter])
      counter +=1
    end
  end

  def select

    @todos.select do |todo|
      yield(todo)
    end

  end
def find_by_title(str)
  select do  |list|
    if list.title == str
      return list.title
    end
  end
  return nil
end

def all_done
  select do |obj|
   obj.done?
  end
end

def all_not_done
  select do |obj|
   obj.done? == false
  end
end

def mark_done(title)
  if find_by_title(title) != nil
    select do  |list|
      list.done!
    end
  end

end

def mark_all_done
  each  { |todo| todo.done! }
end

def mark_all_undone
  each { |todo| todo.undone}
end


end


# given
todo1 = Todo.new("Buy milk")
todo2 = Todo.new("Clean room")
todo3 = Todo.new("Go to gym")
list = TodoList.new("Today's Todos")



# ---- Adding to the list -----

# add
list.add(todo1)                 # adds todo1 to end of list, returns list
list.add(todo2)                 # adds todo2 to end of list, returns list
list.add(todo3)                 # adds todo3 to end of list, returns list

#list.add(1)                     # raises TypeError wit

# list.each do |todo|
#   puts todo
# end

todo1.done!
todo3.done!
list.mark_done("Clean room")

results = list.select {|todo| todo.done?}
#puts results.inspect
#p list.find_by_title("Buy milk")
p list.all_not_done
list.mark_all_done
#p list.all_done