#Tip calculator

#Create a simple tip calculator. The program should prompt for a bill amount and a tip rate. 
#The program must compute the tip and then display both the tip and the total amount of the bill.

def tip_calculator(bill_amount, tip_rate)
  bill_amount * tip_rate / 100.to_f
  #(bill_amount * (tip_rate / 100)).to_f  
end

def total_bill(bill_amount, tip_amount)
  tip_calculator(bill_amount, tip_amount) + bill_amount
end

puts('What is the bill?')
bill = gets.chomp.to_i

puts('What is the tip percentage?')
tip = gets.chomp.to_i

puts("The tip is $#{tip_calculator(bill,tip)}")
puts("the total is $#{total_bill(bill,tip)}")
