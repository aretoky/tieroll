class Staff::KnitController < Staff::Base
  before_action :are_you_staff_member?, only: [:index, :new, :confirm, :create, :show, :edit, :update, :destroy]

  def index
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
  end

  def destroy
  end

  private
  def knit_params
    params.require(:knit).permit(:price, :size, :color, :pattern, :season, :scene, :description, :raw_materials, :knit_name, :knit_code, :knit_front, :knit_back, :knit_inner, :knit_collar, :knit_neck, :knit_one, :knit_two, :knit_three)
  end
end
