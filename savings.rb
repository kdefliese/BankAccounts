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
      elsif (@balance - amount - 200) < 1000
        puts "If you withdraw $#{amount / 100}, you will have a remaining balance below $10. You cannot have a balance of less than $10 in a savings account. Your current balance is $#{@balance / 100} and you will be charged a transaction fee of $2 per withdrawal."
      elsif amount <= @balance
        @balance = @balance - amount - 200
        puts "You have withdrawn $#{amount / 100} and your new account balance is $#{@balance / 100}. You were charged a transaction fee of $2."
      end
    end

    def add_interest(rate)
      puts "The starting balance was #{@balance / 100}"
      interest = @balance * rate/100
      puts "The interest is $#{interest / 100}"
      @balance += interest
      puts "The new balance is $#{@balance / 100}"
      return interest
    end

  end
end
