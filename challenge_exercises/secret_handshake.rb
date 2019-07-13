# Write a program that will take a decimal number, and convert it to the
# appropriate sequence of events for a secret handshake.

# There are 10 types of people in the world: Those who understand binary,
# and those who don't. You and your fellow cohort of those in the "know"
# when it comes to binary decide to come up with a secret "handshake".

# 1 = wink
# 10 = double blink
# 100 = close your eyes
# 1000 = jump


# 10000 = Reverse the order of the operations in the secret handshake.
# handshake = SecretHandshake.new 9
# handshake.commands # => ["wink","jump"]

# handshake = SecretHandshake.new "11001"
# handshake.commands # => ["jump","wink"]
# The program should consider strings specifying an invalid binary as the value 0.


class SecretHandshake
  HANDSHAKE = {             #using an array could be better
    10000 => '',
    1000 => 'jump',
    100 => 'close your eyes',
    10 => 'double blink',
    1 => 'wink'
  }
  attr_reader :num
  def initialize(num)
    @num = num
  end

  def commands
    actions = []
    binary = to_binary
    attach_to_front = binary >= 10000 ? false : true

    HANDSHAKE.each_key do |number|
      used, leftovers = binary.divmod(number)     #use indexes instead of divmod
      new_command = HANDSHAKE.fetch(binary - leftovers, '')

      if attach_to_front
        actions.prepend(new_command)
      else
        actions << new_command
      end

      binary -= used * number
    end

    actions.select {|command| !command.empty?}
  end

  def to_binary #can be almost entirely replaced with to_s(num)
    return num.to_i if num.to_s.match?(/\b[a-z0-1]+\b/i)
    number = num.to_i
    binary_digits = []

    while number > 0
      number, binary = number.divmod(2)
      binary_digits.prepend(binary.to_s)
    end
    binary_digits.join.to_i
  end
end