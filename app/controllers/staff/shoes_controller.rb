class Staff::ShoesController < Staff::Base
  before_action :are_you_staff_member?, only: [:index, :new, :create, :show, :edit, :update, :destroy]

  before_action :set_shoes, only: %i(show edit update destroy)

  def index
    @shoes = Shoe.where(staff_member: @current_staff.id)
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
    if @shoes.invalid?
      render :edit, alert: '確認してね'
    elsif @shoes.update!(shoes_params)
      redirect_to :staff_shoes, notice: '完了'
    else
      render :edit, alert: '確認してね'
    end
  end

  def destroy
  end

  private
  def shoes_params
    params.require(:shoe).permit(:price, :size, :color, :pattern, :season, :scene, :description, :raw_materials, :shoe_name, :shoe_code, :shoe_front, :shoe_back, :shoe_inner, :shoe_out_side, :shoe_sole, :toe, :shoe_one, :shoe_two, :shoe_three, :shoe_four, :shoe_five)
  end

  def set_shoes
    @item = Shoe.find_by(id: params[:id])
  end
end
