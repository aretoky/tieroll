class Staff::ShoesController < Staff::Base
  before_action :are_you_staff_member?, only: [:index, :new, :create, :show, :edit, :update, :destroy]

  def index
  end

  def new
    @shoes = Shoe.new
  end

  def confirm
  end

  def create
    @shoes = @current_staff.shoes.build(shoes_params)
    if params[:back]
      render :new, notice: "編集してね"
    elsif @shoes && @shoes.save
      redirect_to :staff_item_post, notice: "登録したよ"
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
  def shoes_params
    params.require(:shoe).permit(:price, :size, :color, :pattern, :season, :scene, :description, :raw_materials, :shoes_name, :shoes_code, :shoes_one, :shoes_two, :shoes_three, :shoes_four, :shoes_five)
  end
end
