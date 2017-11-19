class Staff::TieController < Staff::Base
  before_action :are_you_staff_member?, only: [:index, :new, :create, :show, :edit, :update, :destroy]

  before_action :set_tie, only: %i(show edit update destroy)

  def index
    @ties = TieNeck.where(staff_member: @current_staff.id)
  end

  def new
    @tie = TieNeck.new
  end

  def confirm
  end

  def create
    @tie = @current_staff.tie_necks.build(tie_params)
    if params[:back]
      render :new, notice: "編集してね"
    elsif @tie && @tie.save
      redirect_to :staff_item_post, notice: "登録しました"
    else
      render :new, alert: "確認してね"
    end
  end

  def edit
  end

  def update
    if @item.invalid?
      render :edit, alert: '確認してね'
    elsif @item.update!(tie_params)
      redirect_to :staff_tie_index, notice: '完了'
    else
      render :edit, alert: '確認してね'
    end
  end

  def destroy
  end

  private
  def tie_params
    params.require(:tie_neck).permit(:price, :size, :color, :pattern, :season, :scene, :description, :raw_materials, :name, :code, :tie_one, :tie_two, :tie_three, :tie_four)
  end

  def set_tie
    @item = TieNeck.find_by(id: params[:id])
  end
end
