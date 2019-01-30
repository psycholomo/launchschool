# calculate the monthly interest rate
# the loan duration in months
# the formula to use is m = p * (j / (1 - (1 + j)**(-n)))

def prompt(message)
  Kernel.puts("=> #{message}")
end

def user_input
  Kernel.gets().chomp()
end

def monthly_interest_rate(annual_interest)
  monthly_interest = ((annual_interest.to_f / 12.0) / 100.0).round(4)

  monthly_interest
end

def monthly_payment(annual_interest, principial, num_of_years)
  annual_interest.to_f
  principial.to_f
  num_of_years.to_f

  # principial * (monthly_interest_rate(annual_interest) / (1 - (1 + monthly_interest_rate(annual_interest)**(-convert_years_to_months(num_of_years)))))
  return (principial * (monthly_interest_rate(annual_interest)) * (1 + monthly_interest_rate(annual_interest)) ** convert_years_to_months(num_of_years) / ((1 + monthly_interest_rate(annual_interest)) ** convert_years_to_months(num_of_years) -1)).round(2)
end

def convert_years_to_months(years)
    years.to_f * 12.0
end


def valid_number?(num)
  num.to_i().to_s == num
end

def positive_number?(num)
  num.to_f > 0

end


prompt('Hello, welcome to the mortgage calculator')
prompt('We are going to calculate the monthly payment for a new car')
prompt('Please enter the total loan amount')
total_loan_amount = ''
total_loan_amount = user_input
puts total_loan_amount
prompt('please enter the number of years for the loan')
total_loan_years = ''
total_loan_years = user_input
puts total_loan_years
prompt('Last, but not least, please enter the annual interest rate')



#puts monthly_interest_rate(10.0)


#(12000*(0.0083*(1+0.0083)^60)/((1+0.0083)^60-1))

puts(monthly_payment(10,12000,5))