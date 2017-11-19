class Staff::BeltController < Staff::Base
  before_action :are_you_staff_member?, only: [:index, :new, :create, :show, :edit, :update, :destroy]

  before_action :set_belt, only: [:show, :edit, :update, :destroy]

  def index
    @belts = Belt.where(staff_member: @current_staff.id)
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
      redirect_to :staff_item_post, notice: '登録完了'
    else
      render :new, alert: '入力に誤りがあるよ'
    end
  end

  def edit
  end

  def update
    if @belt.invalid?
      render :edit, alert: '確認してね'
    elsif @belt.update!(belt_params)
      redirect_to :staff_belt_index, notice: '完了'
    else
      render :edit, alert: '確認してね'
    end
  end

  def destroy
  end

  private
  def belt_params
    params.require(:belt).permit(:price, :size, :color, :pattern, :season, :scene, :description, :raw_materials, :name, :code, :belt_one, :belt_two, :belt_three, :belt_four)
  end

  def set_belt
    @item = Belt.find_by(id: params[:id])
  end

end
