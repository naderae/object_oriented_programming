
class BankAccount
  def initialize(balance, interest_rate)
  @balance = balance
  @interest_rate = interest_rate
  end

  def deposit(amount)
    @balance += amount
  end

  def withdraw(amount)
    @balance -= amount
  end

  def gain_interest
    @balance += @interest_rate * @balance
  end
end



account_1 = BankAccount.new(400, 0.13) # defining a new instance of the class

account_1.deposit(1000) # running the deposit method on bankaccount
