class Staff::VestController < Staff::Base
  before_action :are_you_staff_member?, only: [:index, :new, :create, :show, :edit, :update, :destroy]

  before_action :set_vest, only: %i(show edit update destroy)

  def index
    @vests = Vest.where(staff_member: @current_staff.id)
  end

  def new
    @vest = Vest.new
  end

  def confirm
  end

  def create
    @vest = @current_staff.vests.build(vest_params)
    if params[:back]
      render :new, notice: "編集してね"
    elsif @vest && @vest.save
      redirect_to :staff_item_post, notice: "登録しました"
    else
      render :new, alert: "確認してね "
    end
  end

  def edit
  end

  def update
    if @item.invalid?
      render :edit, alert: '確認してね'
    elsif @item.update!(vest_params)
      redirect_to :staff_vest_index, notice: '完了'
    else
      render :edit, alert: '確認してね'
    end
  end

  def destroy
  end

  private
  def vest_params
    params.require(:vest).permit(:price, :size, :color, :pattern, :season, :scene, :description, :raw_materials, :name, :code, :v_front, :v_back, :v_inner, :v_buckle, :v_other)
  end

  def set_vest
    @item = Vest.find_by(id: params[:id])
  end
end
