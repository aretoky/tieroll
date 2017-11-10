class Staff::LapelPinController < Staff::Base
  before_action :are_you_staff_member?, only: [:index, :new, :confirm, :create, :show, :edit, :update, :destroy]

  def index
  end

  def new
    @lapel_pin = LapelPin.new
  end

  def confirm
  end

  def create
    @lapel_pin = @current_staff.lapel_pin.build(lapel_pin_params)
    if params[:back]
      render :new, notice: "編集してね"
    elsif @lapel_pin && @lapel_pin.save
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
  def lapel_pin_params
    params.require(:lapel_pin).permit(:price, :size, :color, :pattern, :season, :scene, :description, :raw_materials, :lapel_pin_name, :lapel_pin_code, :lapel_pin_one, :lapel_pin_two, :lapel_pin_three, :lapel_pin_four, :lapel_pin_five)
  end
end
