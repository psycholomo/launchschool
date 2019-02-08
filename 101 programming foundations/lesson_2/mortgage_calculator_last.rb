
def integer_validator(number)
  if (number.is_a? Integer) && number.positive?
    number
  else
    puts("This is not a valid number or may be negative, check your input.")
  end
end

def loan_in_months(number_of_years)
  (number_of_years * 12)
end

def monthly_interest_rate(annual_percentage_rate)
  convert_to_decimal = (annual_percentage_rate / 100.0).to_f
  monthly_interest = (convert_to_decimal / 12.0).round(4)
  monthly_interest
end

def monthly_payments(loan_amount, monthly_interest_rate, loan_duration)
  # use the formula m = p * (j / (1 - (1 + j)**(-n)))
  (loan_amount * (monthly_interest_rate / (1 - (1 + monthly_interest_rate)**-loan_duration))).round(2)
end

puts('Welcome to the mortgage and car loan calculator')
puts('-----------------------------------------------')
puts('this will help you calculate your monthly payments for a house or car.')

loan_amount = ''
loop do
  puts('How much is the loan?')
  loan_amount = gets().chomp()
  if loan_amount.empty?
    puts('please enter a number')
  elsif integer_validator(loan_amount.to_i)
    loan_amount = loan_amount.to_i
    break
  end
end

interest_rate = ''
loop do
  puts('what is the annual interest rate?')
  interest_rate = gets().chomp()
  if interest_rate.empty?
    puts('please enter a number')
  elsif integer_validator(interest_rate.to_i)
    interest_rate = monthly_interest_rate(interest_rate.to_i)
    break
  end
end

loan_term = ''
loop do
  puts('how long is the loan in years?')
  loan_term = gets().chomp()
  if loan_term.empty?
    puts('please enter a number')
  elsif integer_validator(loan_term.to_i)
    loan_term = loan_in_months(loan_term.to_i)
    break
  end
end

puts('alright now lets calculate how much you will pay a month')
puts('your monthly payment is ' + monthly_payments(loan_amount, interest_rate, loan_term).to_s)
