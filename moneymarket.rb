module Bank
  class MoneyMarketAccount < Account
    def initialize(id, starting_balance, date)
      super(id, starting_balance, date)
      if balance < 1000000
        raise ArgumentError, "Savings accounts cannot be created with a balance of less than $10,000!"
      end
      @transaction_count = 0
      @max_transactions = 0
      @can_withdraw = true
    end

    def withdraw(amount)
      if @transaction_count < 6 && @can_withdraw == true
        if (@balance - amount) < 1000000
          @balance = @balance - amount - 10000
          @can_withdraw = false
          puts "You have withdrawn $#{amount / 100} and your remaining balance is $#{@balance / 100}. This means your balance is below $10,000, and you cannot make another withdrawal until you deposit more funds. You have been charged a $100 fee for having a remaining account balance below $10,000."
        elsif (@balance - amount) >= 100000
          @balance = @balance - amount
          puts "You have withdrawn $#{amount / 100} and your remaining balance is $#{@balance / 100}."
        end
        @transaction_count += 1
      elsif @transaction_count >= 6
        puts "You have already made six transactions this month so you cannot make any more transactions."
      elsif @can_withdraw == false
        puts "Your account balance is below $10,000, so you cannot withdraw funds until you make a deposit."
      end
    end

    def deposit(amount)
    end

  end
end
