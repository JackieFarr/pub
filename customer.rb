class Customer

  attr_reader :name, :wallet

  def initialize (name, wallet)
    @name = name
    @wallet = wallet
    @drinks_bought = []
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
