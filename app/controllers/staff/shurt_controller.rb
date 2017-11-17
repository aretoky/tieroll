class Staff::ShurtController < Staff::Base
  before_action :are_you_staff_member?, only: [:index, :new, :create, :show, :edit, :update, :destroy]

  before_action :set_shurt, only: %i(show edit update destroy)

  def index
    @shurts = Shurt.where(staff_member: @current_staff.id)
  end

  def new
    @shurt = Shurt.new
  end

  def confirm
  end

  def create
    @shurt = @current_staff.shurts.build(shurt_params)
    if params[:back]
      render :new, notice: "編集してね"
    elsif  @shurt && @shurt.save
      redirect_to :staff_item_post, notice: "登録しました"
    else
      render :new, alert: "確認してね"
    end
  end

  def edit
  end

  def update
    if @shurt.invalid?
      render :new, alert: '確認してね'
    elsif @shurt.update!(shurt_params)
      redirect_to :staff_shurt_index, notice: '完了'
    else
      render :new, alert: '確認してね'
    end
  end

  def destroy
  end

  private
  def shurt_params
    params.require(:shurt).permit(:price, :size, :color, :pattern, :season, :scene, :description, :raw_materials, :shurt_name, :shurt_code, :s_front, :s_back, :s_cuff, :s_button, :s_breast_pocket, :s_collar, :s_other)
  end

  def set_shurt
    @shurt = Shurt.find_by(id: params[:id])
  end
end
