class Pub

  attr_reader :name, :till, :drinks

  def initialize (name, till, drinks)
    @name = name
    @till = till
    @drinks = drinks
  end


  def lose_drink
    @drinks.pop
  end

  # def drinks_left
  #   @drinks.count
  # end

  def till_add(price)
  @till += price
    # pay = bar.lose_drink.price
    # @till += pay
  end

  def check_age(customer)
    if customer.age > 18
      p "You can drink alcohol"
    else 
      p "No booze"
    end
  end
end
