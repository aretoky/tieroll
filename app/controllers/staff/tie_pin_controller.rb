class Staff::TiePinController < Staff::Base
  before_action :are_you_staff_member?, only: [:index, :new, :create, :show, :edit, :update, :destroy]

  before_action :set_tie_pin, only: %i(show edit update destroy)

  def index
    @tie_pins = TiePin.where(staff_member: @current_staff.id)
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
    if @tie_pin.invalid?
      render :edit, alert: '確認してね'
    elsif @tie_pin.update!(tie_pin_params)
      redirect_to :staff_tie_index, notice: '完了'
    else
      render :edit, alert: '確認してね'
    end
  end

  def destroy
  end

  private
  def tie_pin_params
    params.require(:tie_pin).permit(:price, :size, :color, :pattern, :season, :scene, :description, :raw_materials, :tie_pin_name, :tie_pin_code, :tie_pin_one, :tie_pin_two, :tie_pin_three)
  end

  def set_tie_pin
    @item = TiePin.find_by(id: params[:id])
  end
end
