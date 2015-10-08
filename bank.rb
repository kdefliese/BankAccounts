require "./bankaccount.rb"
require "./savings.rb"
require "./checking.rb"

# hey = Bank::SavingsAccount.new(1,1000000,"today")
# hey.add_interest(10)
# hey.withdraw(10000)
you = Bank::CheckingAccount.new(2,100000,"today")
you.withdraw(1000)
you.withdraw_using_check(1000)
you.withdraw_using_check(1000)
you.withdraw_using_check(1000)
you.withdraw_using_check(1000)
you.withdraw_using_check(1000)
you.withdraw_using_check(1000)
you.reset_checks
you.withdraw_using_check(1000)
