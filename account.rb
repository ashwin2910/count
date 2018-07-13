class Account
  attr_reader :name
  attr_reader :balance
  def initialize(name, balance=100)
    @name = name
    @balance = balance
  end
  
  public
  def display_balance(pin_number)
    pin
    if @pin==pin_number
      puts "Balance: $#{@balance}."
    else
      puts pin_error
    end
  end
  def withdraw(pin_number,amount)
   pin
   if @pin==pin_number
     @balance-=amount
     puts "Withdrew #{amount}. New balance:    $#{@balance}"
   else
     puts pin_error
   end
  end
  private
  def pin
    @pin = 1234
  end
  def pin_error
    return "Access denied: incorrect PIN."
  end 
end
checking_account=Account.new("ashwin",12000)
puts "Enter your pin no: "
pin=gets.to_i
puts "Enter the amount you would like to withdraw"
withdr=gets.to_i
checking_account.display_balance(pin)
checking_account.withdraw(pin,withdr)


