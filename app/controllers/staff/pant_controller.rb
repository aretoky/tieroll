class Staff::PantController < Staff::Base
  before_action :are_you_staff_member?, only: [:index, :new, :create, :show, :edit, :update, :destroy]

  before_action :set_pant, only: %i(show edit update destroy)

  def index
    @pants = Pant.where(staff_member: @current_staff.id)
  end

  def new
    @pant = Pant.new
  end

  def confirm
  end

  def create
    @pant = @current_staff.pants.build(pants_params)
    if params[:back]
      render :new, notice: "編集してね"
    elsif @pant && @pant.save
      redirect_to :staff_item_post, notice: "保存したよ"
    else
      render :new, alert: "入力に誤りがあるよ"
    end
  end

  def edit
  end

  def update
    if @pant.invalid?
      render :new, alert: '確認してね'
    elsif @pant.update!(pants_params)
      redirect_to :staff_pant_index, notice: '完了'
    else
      render :new, alert: '確認してね'
    end
  end

  def destroy
  end

  private
  def pants_params
    params.require(:pant).permit(:price, :size, :color, :pattern, :season, :scene, :description, :raw_materials, :pant_name, :pant_code, :p_front, :p_back, :p_side, :p_inner, :p_hem, :belt_roop, :p_front_pocket, :p_back_pocket, :p_other)
  end

  def set_pant
    @pant = Pant.find_by(id: params[:id])
  end
end
