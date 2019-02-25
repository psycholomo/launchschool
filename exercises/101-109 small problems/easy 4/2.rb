


def century(number)
  the_century = calculate_century(number).to_s
  exception = ['11','12','13']
  centuries = ['th','rd','st','nd']
  last_number = the_century.slice(-1)
  if exception.include?(the_century)
    return the_century + centuries[0]
  end

    case last_number
    when '1' 
      the_century + centuries[2]
    when '2'
      the_century + centuries[3]
    when '3'
      the_century + centuries[1]
    else the_century + centuries[0]
    end

end

def calculate_century(year)
    century = year / 100
    if year < 101
      return 1
    elsif century % 100 == 0
      return century -1
    elsif year % 100 == 0
      return century
    else
      return century + 1
    end

end


century(2000) == '20th'
century(2001) == '21st'
century(1965) == '20th'
century(256) == '3rd'
century(5) == '1st'
century(10103) == '102nd'
century(1052) == '11th'
century(1127) == '12th'
century(11201) == '113th'

puts century(256)
puts century(11201)
puts century(300)

