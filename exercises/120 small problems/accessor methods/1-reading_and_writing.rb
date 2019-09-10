#Add the appropriate accessor methods to the following code.

class Person
  attr_accessor :name


  def name=(new_name)

    @name = new_name
  end
end

person1 = Person.new
person1.name = 'Jessica'
puts person1.name
# Expected output:

# Jessica