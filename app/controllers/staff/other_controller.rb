class Staff::OtherController < Staff::Base
  before_action :are_you_staff_member?, only: [:index, :new, :confirm, :create, :show, :edit, :update, :destroy]

  before_action :set_other, only: %i(show edit update destroy)

  def index
    @others = Other.where(staff_member: @current_staff.id)
  end

  def new
    @other = Other.new
  end

  def confirm
  end

  def create
    @other = @current_staff.others.build(other_params)
    if params[:back]
      render :new, notice: "編集してね"
    elsif @other && @other.save
      redirect_to :staff_item_post, notice: "登録したよ"
    else
      render :new, alert: "だめよ"
    end
  end

  def edit
  end

  def update
    if @other.invalid?
      render :edit, alert: '確認してね'
    elsif @other.update!(other_params)
      redirect_to :staff_other_index, notice: '完了'
    else
      render :edit, alert: '確認してね'
    end
  end

  def destroy
  end

  private
  def other_params
    params.require(:other).permit(:price, :size, :color, :pattern, :season, :scene, :description, :raw_materials, :name, :code, :other_one, :other_two, :other_three, :other_four, :other_five)
  end

  def set_other
    @item = Other.find_by(id: params[:id])
  end
end
