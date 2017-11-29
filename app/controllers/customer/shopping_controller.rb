class Customer::ShoppingController < Customer::Base
  def index
    @code = Marchandise.all.pluck(:id, :product_face)
  end
end
