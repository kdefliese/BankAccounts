module Bank
  class CheckingAccount < Account
    def initialize(id, starting_balance, date)
      super(id, starting_balance, date)
    end

    def withdraw(amount)
      if amount > @balance
        puts "That's more than you have available in your account! Your account balance is $#{@balance / 100}."
      elsif (@balance - amount - 100) < 0
        puts "If you withdraw $#{amount / 100}, you will have a remaining balance below $0. Your current balance is $#{@balance / 100} and you will be charged a transaction fee of $1 per withdrawal."
      elsif amount <= @balance
        @balance = @balance - amount - 100
        puts "You have withdrawn $#{amount / 100} and your new account balance is $#{@balance / 100}. You were charged a transaction fee of $1."
      end
    end

    def withdraw_using_check(amount)
    end

    def reset_checks
    end

  end
end
