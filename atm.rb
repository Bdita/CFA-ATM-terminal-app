# set up initial balance
@balance = 100

def deposit(amount, addition)
  amount = amount + addition
end
def withdraw(amount, deduction)
  amount = amount - deduction
end

def display_balance(amount)
  puts "Your new balance is $ #{amount}"
end

def ask_customer
puts "What do you want to do? You have $#{@balance}. Choose 1 for withdraw, 2 for deposit"
action = gets.chomp.to_i

puts "Enter the amount"
amt = gets.chomp.to_i

if action == 1
  new_balance = withdraw(@balance, amt)
  display_balance(new_balance)
elsif action == 2
  new_balance = deposit(@balance, amt)
  display_balance(new_balance)
else
  puts "Invalid entry. Please enter 1 for withdraw or 2 for deposit"
end
end

10.times do
  ask_customer
end
