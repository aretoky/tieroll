class Staff::GloveController < Staff::Base
  before_action :are_you_staff_member?, only: [:index, :new, :confirm, :create, :show, :edit, :update, :destroy]

  before_action :set_glove, only: [:show, :edit, :update, :destroy]

  def index
    @gloves = Gant.where(staff_member: @current_staff.id)
  end

  def new
    # gloveとするとglovesの際の不規則変化に引っかかり、元のモデルがglofeと判断されてしまうが、tie_neckの様に簡単な代替が思いつかないのでモデルのみGantに変更する
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
    if @glove.invalid?
      render :edit, alert: '確認してね'
    elsif @glove.update!(glove_params)
      redirect_to :staff_glove_index, notice: '完了'
    else
      render :edit, alert: '確認してね'
    end
  end

  def destroy
  end

  private
  def glove_params
    params.require(:gant).permit(:price, :size, :color, :pattern, :season, :scene, :description, :raw_materials, :name, :code, :glove_front, :glove_back, :glove_inner, :glove_wrist, :glove_one, :glove_two, :glove_three)
  end

  def set_glove
    @item = Gant.find_by(id: params[:id])
  end
end
