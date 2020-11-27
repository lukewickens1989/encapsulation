### Exercise 1
#### Use a diagram to group the methods in these examples:
Bank
  * get_balance
  * credit_account(date, amount)
  * debit_account(date, amount)
  * print_statement

I would group these methods as follows:

class UserAccount

  def initialze
    @user_balance
    @user_transactions
  end

end

class AccountInformation

  def get_balance
    puts @user_balance
  end

  def print_statement
    puts @user_transactions.join(",")
  end

end

class AccountActions

  def initialize(date = Date.now, amount)
    @date = date
    @amount = amount
  end

  def credit_account
    @user_balance += amount
    puts "You have credited your account to the value of #{amount}."
    puts "Your balance on #{@date} is now: #{@user_balance}."
  end

  def debit_account
    @user_balance -= amount
    puts "You have debited your account to the value of #{amount}."
    puts "Your balance on #{@date} is now: #{@user_balance}."
  end
  
end