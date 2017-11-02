class Staff::MainProductController < Staff::Base

  def new
    @product = Product.new
    @size = Size.pluck(:id, :product_size)
  end

  def confirm
    render :new if @product.invalid?
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def product_params
  end

end
