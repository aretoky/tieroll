class Staff::PocketChiefController < Staff::Base
  before_action :are_you_staff_member?, only: [:index, :new, :create, :show, :edit, :update, :destroy]

  def index
  end

  def new
    @chief = PocketChief.new
  end

  def confirm
  end

  def create
    @chief = @current_staff.pocket_chiefs.build(chief_params)
    if params[:back]
      render :new, notice: "編集してね"
    elsif @chief && @chief.save
      redirect_to :staff_item_post, notice: "登録したよ"
    else
      render :new, alert: "入力に誤りがあるよ"
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def chief_params
    params.require(:pocket_chief).permit(:price, :size, :color, :pattern, :season, :scene, :description, :raw_materials, :chief_name, :chief_code, :chief_one, :chief_two, :chief_three)
  end
end
