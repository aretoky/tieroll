class Staff::MufflerController < Staff::Base
  before_action :are_you_staff_member?, only: [:index, :new, :confirm, :create, :show, :edit, :update, :destroy]

  def index
  end

  def new
    @muffler = Muffler.new
  end

  def confirm
  end

  def create
    @muffler = @current_staff.mufflers.build(muffler_params)
    if params[:back]
      render :new, notice: "編集してね"
    elsif @muffler && @muffler.save
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
  def muffler_params
    params.require(:muffler).permit(:price, :size, :color, :pattern, :season, :scene, :description, :raw_materials, :muffler_name, :muffler_code, :muffler_front, :muffler_back, :muffler_fringe, :muffler_one, :muffler_two, :muffler_three)
  end
end
