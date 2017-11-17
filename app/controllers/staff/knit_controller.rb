class Staff::KnitController < Staff::Base
  before_action :are_you_staff_member?, only: [:index, :new, :confirm, :create, :show, :edit, :update, :destroy]

  # before_action :set_knit, only: [:show, :edit, :update, :destroy]
  before_action :set_knit, only: %i(show edit update destroy)

  def index
    @knits = Knit.where(staff_member: @current_staff.id)
  end

  def new
    @knit = Knit.new
  end

  def confirm
  end

  def create
    @knit = @current_staff.knits.build(knit_params)
    if params[:back]
      render :new, notice: "編集してね"
    elsif @knit && @knit.save
      redirect_to :staff_item_post, notice: "登録したよ"
    else
      render :new, alert: "だめよ"
    end
  end

  def edit
  end

  def update
    if @knit.invalid?
      render :new, alert: '確認してね'
    elsif @knit.update!(knit_params)
      redirect_to :staff_knit_index, notice: '完了'
    else
      render :new, alert: '確認してね'
    end
  end

  def destroy
  end

  private
  def knit_params
    params.require(:knit).permit(:price, :size, :color, :pattern, :season, :scene, :description, :raw_materials, :knit_name, :knit_code, :knit_front, :knit_back, :knit_inner, :knit_neck, :knit_one, :knit_two, :knit_three)
  end

  def set_knit
    @knit = Knit.find_by(id: params[:id])
  end
end
