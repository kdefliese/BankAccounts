module Bank
  class SavingsAccount < Account
    def initialize(id, starting_balance, date)
      super(id, starting_balance, date)
      if balance < 1000
        raise ArgumentError, "Savings accounts cannot be created with a balance of less than $10!"
      end
    end

    def withdraw(amount)
      if amount > @balance
        puts "That's more than you have available in your account! Your account balance is $#{@balance / 100}."
      elsif (@balance - amount) < 1000
        puts "If you withdraw $#{amount / 100}, you will have a remaining balance below $10. You cannot have a balance of less than $10 in a savings account. Your current balance is $#{@balance / 100}."
      elsif amount <= @balance
        @balance = @balance - amount
        puts "You have withdrawn $#{amount / 100} and your new account balance is $#{@balance / 100}."
      end
    end

    def add_interest(rate)
    end

  end
end
