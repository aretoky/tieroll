class Staff::BeltController < Staff::Base
  before_action :are_you_staff_member?, only: [:index, :new, :create, :show, :edit, :update, :destroy]

  def index
  end

  def new
    @belt = Belt.new
  end

  def confirm
  end

  def create
    @belt = @current_staff.belts.build(belt_params)
    if params[:back]
      render :new, notice: '編集してね'
    elsif @belt && @belt.save
      redirect_to staff_root_path, notice: '登録完了'
    else
      render :new, alert: '入力に誤りがあるよ'
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def belt_params
    params.require(:belt).permit(:price, :size, :color, :pattern, :season, :scene, :description, :raw_materials, :belt_name, :belt_code, :belt_one, :belt_two, :belt_three, :belt_four)
  end

end
