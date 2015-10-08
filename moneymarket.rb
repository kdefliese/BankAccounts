module Bank
  class MoneyMarketAccount < Account
    def initialize(id, starting_balance, date)
      super(id, starting_balance, date)
      if balance < 1000000
        raise ArgumentError, "Savings accounts cannot be created with a balance of less than $10000!"
      end
      @transaction_count = 0
    end

    def withdraw(amount)
    end

    def deposit(amount)
    end

  end
end
