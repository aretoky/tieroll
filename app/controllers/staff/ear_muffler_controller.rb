class Staff::EarMufflerController < Staff::Base
  before_action :are_you_staff_member?, only: [:index, :new, :confirm, :create, :show, :edit, :update, :destroy]
  before_action :set_ear_muffler, only: [:show, :edit, :update, :destroy]

  def index
    @ear_mufflers = EarMuffler.where(staff_member: @current_staff.id)
  end

  def new
    @ear_muffler = EarMuffler.new
  end

  def confirm
  end

  def create
    @ear_muffler = @current_staff.ear_mufflers.build(ear_muffler_params)
    if params[:back]
      render :new, notice: "編集してね"
    elsif @ear_muffler && @ear_muffler.save
      redirect_to :staff_item_post, notice: "登録したよ"
    else
      render :new, alert: "だめよ"
    end
  end

  def edit
  end

  def update
    if @item.invalid?
      render :edit, alert: '確認してね'
    elsif @item.update!(ear_muffler_params)
      redirect_to :staff_ear_muffler_index, notice: '完了'
    else
      render :edit, alert: '確認してね'
    end
  end

  def destroy
  end

  private
  def ear_muffler_params
    params.require(:ear_muffler).permit(:price, :size, :color, :pattern, :season, :scene, :description, :raw_materials, :name, :code, :ear_muffler_front, :ear_muffler_beck, :ear_muffler_inner, :ear_muffler_one, :ear_muffler_two, :ear_muffler_three, :ear_muffler_four)
  end

  def set_ear_muffler
    @item = EarMuffler.find_by(id: params[:id])
  end
end
