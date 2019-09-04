# Private Secret
# Using the following code, add a method named share_secret that prints the value of @secret when invoked.

class Person
  attr_writer :secret

  private

  attr_reader :secret

  public 
  def share_secret
    secret
  end
end

person1 = Person.new
person1.secret = 'Shh.. this is a secret!'
person1.share_secret
# Expected output:

# Shh.. this is a secret!