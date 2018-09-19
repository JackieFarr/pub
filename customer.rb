class Customer

  attr_reader :name, :wallet, :age

  def initialize (name, wallet, age)
    @name = name
    @wallet = wallet
    @age = age
    @drinks_bought = []
    # @age = age
  end

  def gets_drink(bar)
    drink = bar.lose_drink
    @drinks_bought << drink
  end

  def pay_drink(bar)
    drink = bar.lose_drink.price
    @wallet -= drink
  end



end
