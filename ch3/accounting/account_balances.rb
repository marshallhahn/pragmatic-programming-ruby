require_relative 'account'
require_relative 'transaction'

savings = Account.new(100)
checking = Account.new(200)

puts "Balances:"
puts "Checking: #{checking.balance}"
puts "Savings: #{savings.balance}"
puts "\nHow much would you like to transfer from checking to savings?"

transfer_amt = Float(gets)

transaction = Transaction.new(checking, savings)
transaction.transfer(transfer_amt)

puts "Checking: #{checking.balance}"
puts "Savings: #{savings.balance}"