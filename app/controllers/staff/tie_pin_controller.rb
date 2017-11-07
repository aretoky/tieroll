class Staff::TiePinController < Staff::Base
  before_action :are_you_staff_member?, only: [:index, :new, :create, :show, :edit, :update, :destroy]

  def index
  end

  def new
    @tie_pin = TiePin.new
  end

  def confirm
  end

  def create
    @tie_pin = @current_staff.tie_pins.build(tie_pin_params)
    if params[:back]
      render :new, notice: "編集してね"
    elsif @tie_pin && @tie_pin.save
      redirect_to :staff_item_post, notice: "登録しました"
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
  def tie_pin_params
    params.require(:tie_pin).permit(:price, :size, :color, :pattern, :season, :scene, :description, :raw_materials, :tie_pin_name, :tie_pin_code, :tie_pin_one, :tie_pin_two, :tie_pin_three)
  end
end
