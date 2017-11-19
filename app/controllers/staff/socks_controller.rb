class Staff::SocksController < Staff::Base
  before_action :are_you_staff_member?, only: [:index, :new, :confirm, :create, :show, :edit, :update, :destroy]

  before_action :set_socks, only: %i(show edit update destroy)

  def index
    @socks = Sock.where(staff_member: @current_staff.id)
  end

  def new
    @socks = Sock.new
  end

  def confirm
  end

  def create
    @socks = @current_staff.socks.build(socks_params)
    if params[:back]
      render :new, notice: "編集してね"
    elsif @socks && @socks.save
      redirect_to :staff_item_post, notice: "登録したよ"
    else
      render :new, alert: "だめよ"
    end
  end

  def edit
  end

  def update
    if @socks.invalid?
      render :edit, alert: '確認してね'
    elsif @socks.update!(socks_params)
      redirect_to :staff_socks, notice: '完了'
    else
      render :edit, alert: '確認してね'
    end
  end

  def destroy
  end

  private
  def socks_params
    params.require(:sock).permit(:price, :size, :color, :pattern, :season, :scene, :description, :raw_materials, :socks_name, :socks_code, :socks_one, :socks_two, :socks_three)
  end

  def set_socks
    @socks = Sock.find_by(id: params[:id])
  end
end
