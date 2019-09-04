# #1
# class Person
#   attr_accessor :name
#   def initialize(name)
#     @name = name
#   end

# end


# bob = Person.new('bob')

# p bob.name


#2 

class Person

  attr_accessor :first_name, :last_name

  def initialize(n)
    @first_name = n
    @last_name = ""
  end

   def name
     return "#{first_name} #{last_name}"
   end

   def name=(full_name)
    if full_name.split(" ").length > 1
      self.first_name = full_name.split[0]
      self.last_name =  full_name.split[1]
        else self.first_name = full_name
          self.last_name = ""
    end





   end

   def to_s
    name
  end
  end


  bob = Person.new("Robert")

  bob.name

  bob.last_name = "help"

  bob.name
  bob.name = "hallejo jose"
  puts bob

  puts bob.first_name

  bob.name = "yes"

  puts bob
