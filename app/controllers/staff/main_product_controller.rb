class Staff::MainProductController < Staff::Base

  def new
    @product = Product.new
  end

  def confirm
    render :new if @product.invalid?
  end

  def create
    @product = @current_staff.products.build(product_params)
    if params[:back]
      render :new, notice: "編集してね"
    elsif @product && @product.save!
      redirect_to @product, notice: "登録完了"
    else
      render :new, alert: "確認してね"
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def product_params
    params.require(:main_product).permit(:belt, :coat, :cuff_link, :ear_muffler, :gant, :hat, :jacket, :knit, :lapel_pin, :muffler, :other, :pant, :shoe, :shurt, :sock, :tie_neck, :tie_pin, :vest, :product_face, :name, :code, :scene, :season, :description)
  end

end
