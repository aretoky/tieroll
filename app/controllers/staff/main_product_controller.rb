class Staff::MainProductController < Staff::Base
  before_action :current_staff

  def new
    @product = Product.new
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
