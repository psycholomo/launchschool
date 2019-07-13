require 'pry'

class Marker
  attr_reader :num
  attr_accessor :marked

  def initialize(num)
    @num = num
    @marked = false
  end

  def marked?
    @marked
  end

  def unmarked?
    @marked == false
  end

  def mark
    @marked = true
  end

  def to_s
    "#{num}: #{marked}"
  end
end

class Sieve
  def initialize(max_num)
    @max_num = max_num
    @list_of_numbers = []
    make_list(max_num)
  end

  def make_list(num)
    2.upto(num) {|number| @list_of_numbers << Marker.new(number)}
  end

  def primes
    current_prime_index = 0

    loop do
      current_prime = @list_of_numbers[current_prime_index].num

      mark_multiples_as_prime(current_prime)
      #get next unmarked number
      loop do
        current_prime_index += 1
        break if current_prime_index >= @max_num - 1
        break if @list_of_numbers[current_prime_index].unmarked?
      end
      break if current_prime_index >= @max_num - 1
    end

    @list_of_numbers.select{|object| object.unmarked?}.map{|object| object.num}
  end

  def mark_multiples_as_prime(current_prime)
    ((current_prime * 2)..@max_num).step(current_prime) do |num|
      index = num - 2 #ensure that the index matches with the value
      next if @list_of_numbers[index].marked?
      @list_of_numbers[index].mark
    end
  end
end

sieve = Sieve.new(20)
puts sieve.primes

# 1.  create a list of numbers from 2 up to max_num
# 2.  set a variable equal to 2 (the smallest prime number)
# 3.  increment by 2, marking every number (not 2)
# 4.  Find the first number greater than p in the list that is not marked.
#     If there was no such number, stop. Otherwise, let p now equal this new
#     number (which is the next prime), and repeat from step 3.
# 5.  When the algorithm terminates, the numbers remaining not marked in the
#     list are all the primes below max_num.

