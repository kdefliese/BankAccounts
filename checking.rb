module Bank
  class CheckingAccount < Account
    def initialize(id, starting_balance, date)
      super(id, starting_balance, date)
      @used_checks = 0
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
      return @balance
    end

    def withdraw_using_check(amount)
      if amount > (@balance + 10)
        puts "If you withdraw $#{amount / 100}, you will have a remaining balance below -$10. Your current balance is $#{@balance / 100}."
      elsif amount <= (@balance + 10)
        if @used_checks >= 4
          @balance = @balance - amount - 200
          puts "You have withdrawn $#{amount / 100} and your new account balance is $#{@balance / 100}. You were charged a transaction fee of $2 because you have deposited more than three checks this month."
        else
          @balance = @balance - amount
          puts "You have withdrawn $#{amount / 100} and your new account balance is $#{@balance / 100}."
        end
        @used_checks += 1
      end
      return @balance
    end

    def reset_checks
      @used_checks = 0
    end

  end
end
