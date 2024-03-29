
class Car
  def initialize(condition, make, model, year, mileage,  price)
    @make = make
    @model = model
    @year = year
    @price = price
    @condition =condition
    @mileage=mileage
  end
  def to_s
    "#{@condition.upcase}--#{@make.upcase}|#{@model.upcase}|#{@year}|#{@mileage} miles--$#{@price}"
  end
  attr_accessor :price
  attr_accessor :mileage
end

c1=Car.new("used", "honda", "civic", 2008, 140000, 10000)
c2=Car.new("used", "honda", "crv", 2001, 176000, 2000)
c3=Car.new("used", "chevrolet", "s10", 1994, 100000, 1500)


#basic user interface
puts "What would you like to access a service?[yes/no]"
user_input1= gets.chomp.upcase.to_s
while user_input1 !="NO"

  puts "What would you like to view? [Inventory, Loan, Customer]"
    user_input2= gets.chomp.upcase.to_s
    if user_input2 =='INVENTORY'
      puts "Current cars in inventory:"
      puts c1
      puts c2
      puts c3
    elsif user_input2 == 'LOAN'
      puts "placeholder"
    elsif user_input2 == 'CUSTOMER'
      puts "placeholder"
    else
      puts "Invalid choice."
      abort
    end
      user_input1= gets.chomp.upcase.to_s
end
