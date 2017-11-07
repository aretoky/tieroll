class Staff::CoatController < Staff::Base
  before_action :are_you_staff_member?, only: [:index, :new, :confirm, :create, :show, :edit, :update, :destroy]

  def index
  end

  def new
    @coat = Coat.new
  end

  def confirm
  end

  def create
    @coat = @current_staff.coats.build(coat_params)
    if params[:back]
      render :new, notice: "編集してね"
    elsif @coat && @coat.save
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
  def coat_params
    params.require(:coat).permit(:price, :size, :color, :pattern, :season, :scene, :description, :raw_materials, :coat_name, :coat_code, :coat_front, :coat_back, :coat_open_front, :coat_closed_front, :coat_inner, :coat_inner_r, :coat_inner_l, :coat_lapel, :coat_pocket, :coat_breast_pocket, :coat_bents, :coat_one, :coat_two, :coat_three)
  end 
end
