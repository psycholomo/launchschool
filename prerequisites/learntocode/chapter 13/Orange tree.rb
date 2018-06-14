
class OrangeTree 
     #initalize any instance variables
  def initialize(height,oranges,age)
    @height = height
    @oranges = oranges
    @age = age

  end
 
  def height_age
    #returns the height of the tree

    return puts "The tree is #{@height} feet tall and is #{@age} years old."
  end

  def one_year_passes
    #when called the tree grows taller also put in a number for when the tree dies
    #first few years no fruit.. and after words it will produce fruit

    if @height >= 22
      @height = 22

  else @height += 1
    
  end

    @age += 1
    if @age >= 50
      puts "The tree has died. Please grow another tree."
      @oranges = 0
      exit
      else @age >= 3
      puts "all oranges have fallen off the tree from last year, but you are in luck, there is a new batch this year."
      @oranges = rand(5..20)
      puts "There are now #{@oranges} oranges on the tree"
      
    end
    

    

  end

  def count_the_oranges
    #return the # of oranges that are on the tree
    return puts "There are #{@oranges} oranges on the tree."
  end

  def pick_an_orange
    #reduces the orange count on the tree. also tells you how delicious the orange was
    #also let them know if there are no oranges on the tree.
    # any ornages that are not picked fall off before the next year
    
    if @oranges > 0 
      @oranges -= 1
      puts "you picked an orange. There are now #{@oranges} oranges on the tree"

    else puts "There are no oranges on the tree"
    end

end


end

new_tree = OrangeTree.new(10,0,0)

new_tree.one_year_passes
new_tree.one_year_passes
new_tree.one_year_passes
new_tree.height_age
new_tree.count_the_oranges
new_tree.pick_an_orange
