class Cart
  extend Forwardable

  def initialize
    @cart = []
  end

  def_delegator :@cart, :push, :add
  def_delegator :@cart, :delete, :remove

  def_delegators :@cart, :size

  def total_cost
    @cart.map(&:cost).inject(:+)
  end
end

class Item
  attr_accessor :cost

  def initialize(cost)
    @cost = cost
  end

end
