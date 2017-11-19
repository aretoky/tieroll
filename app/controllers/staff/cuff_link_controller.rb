class Staff::CuffLinkController < Staff::Base
  before_action :are_you_staff_member?, only: [:index, :new, :confirm, :create, :show, :edit, :update, :destroy]
  before_action :set_cuff, only: [:show, :edit, :update, :destroy]

  def index
    @cuff_links = CuffLink.where(staff_member: @current_staff.id)
  end

  def new
    @cuff_link = CuffLink.new
  end

  def confirm
  end

  def create
    @cuff_link = @current_staff.cuff_links.build(cuff_link_params)
    if params[:back]
      render :new, notice: "編集してね"
    elsif @cuff_link && @cuff_link.save
      redirect_to :staff_item_post, notice: "登録したよ"
    else
      render :new, alert: "だめよ"
    end
  end

  def edit
  end

  def update
    if @cuff_link.invalid?
      render :edit, alert: '確認してね'
    elsif @cuff_link.update!(cuff_link_params)
      redirect_to :staff_cuff_link_index, notice: '完了'
    else
      render :edit, alert: '確認してね'
    end
  end

  def destroy
  end

  private
  def cuff_link_params
    params.require(:cuff_link).permit(:price, :size, :color, :pattern, :season, :scene, :description, :raw_materials, :cuff_link_name, :cuff_link_code, :cuff_link_one, :cuff_link_two, :cuff_link_three, :cuff_link_four, :cuff_link_five, :cuff_link_six, :cuff_link_seven)
  end

  def set_cuff
    @item = CuffLink.find_by(id: params[:id])
  end
end
