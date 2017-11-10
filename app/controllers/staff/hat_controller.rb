class Staff::HatController < Staff::Base
  before_action :are_you_staff_member?, only: [:index, :new, :confirm, :create, :show, :edit, :update, :destroy]

  def index
  end

  def new
    @hat = Hat.new
  end

  def confirm
  end

  def create
    @hat = @current_staff.hats.build(hat_params)
    if params[:back]
      render :new, notice: "編集してね"
    elsif @hat && @hat.save
      redirect_to :staff_item_post, notice: "登録したよ"
    else
      render :new, alert: "だめよ"
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def hat_params
    params.require(:hat).permit(:price, :size, :color, :pattern, :season, :scene, :description, :raw_materials, :hat_name, :hat_code, :hat_front, :hat_back, :hat_side, :hat_roof, :hat_sole, :hat_inner, :hat_one, :hat_two)
  end
end
