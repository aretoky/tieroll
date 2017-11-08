class Staff::GloveController < Staff::Base
  before_action :are_you_staff_member?, only: [:index, :new, :confirm, :create, :show, :edit, :update, :destroy]

  def index
  end

  def new
    # gloveとするとglovesの際の不規則変化に引っかかり、元のモデルがglofeと判断されてしまうが、tie_neckの様に簡単な代替が思いつかないのでモデル名のみ変更する
    @glove = Gant.new
  end

  def confirm
  end

  def create
    @glove = @current_staff.gants.build(glove_params)
    if params[:back]
      render :new, notice: "編集してね"
    elsif @glove && @glove.save
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
  def glove_params
    params.require(:gant).permit(:price, :size, :color, :pattern, :season, :scene, :description, :raw_materials, :glove_name, :glove_code, :glove_front, :glove_back, :glove_inner, :glove_wrist, :glove_one, :glove_two, :glove_three)
  end
end
