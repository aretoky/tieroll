class Staff::OtherController < Staff::Base
  before_action :are_you_staff_member?, only: [:index, :new, :confirm, :create, :show, :edit, :update, :destroy]

  def index
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
  end

  def destroy
  end

  private
  def other_params
    params.require(:other).permit(:price, :size, :color, :pattern, :season, :scene, :description, :raw_materials, :other_item_name, :other_item_code, :other_one, :other_two, :other_three, :other_four, :other_five)
  end

end
