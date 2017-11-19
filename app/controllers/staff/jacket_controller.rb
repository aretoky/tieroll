class Staff::JacketController < Staff::Base
  before_action :are_you_staff_member?, only: [:index, :new, :confirm, :create, :show, :edit, :update, :destroy]

  before_action :set_jacket, only: [:edit, :update, :destroy]

  def index
    # @jackets = Jacket.where(staff_member: @current_staff.id).pluck(:j_front, :jacket_name, :jacket_code, :price)
    @jackets = Jacket.where(staff_member: @current_staff.id)
    # binding.pry
  end

  def new
    @jacket = Jacket.new
  end

  def confirm
    # binding.pry
    # @jacket = @current_staff.jackets.build(jacket_params)
    # @jacket.j_front.cache!
    # binding.pry
    # render :new, alert: "確認してね" if @jacket.invalid?
  end

  def create
    # binding.pry
    @jacket = @current_staff.jackets.build(jacket_params)
    # binding.pry
    if params[:back]
      # binding.pry
      render :new, notice: "編集してね"
      # binding.pry
    elsif @jacket && @jacket.save
      # binding.pry
      redirect_to :staff_item_post, notice: "登録したよ"
    else
      # binding.pry
      render :new, alert: "だめよ"
    end
  end

  def edit
  end

  def update
    if @item.invalid?
      render :edit, alert: '確認してください'
    elsif @item.update(jacket_params)
      redirect_to :staff_jacket_index, notice: '編集完了'
    else
      render :edit, alert: '確認してね'
    end
  end

  def destroy
  end

  private
  def jacket_params
    params.require(:jacket).permit(:price, :size, :color, :pattern, :season, :scene, :description, :raw_materials, :name, :code, :j_front, :j_back, :open_front, :closed_front, :j_cuff, :lapel, :j_bents, :j_inner, :j_inner_r, :j_inner_l, :j_button, :j_pocket, :j_breast_pocket, :j_other_one, :j_other_two, :j_front_cache, :j_back_cache)
  end

  def set_jacket
    @item = Jacket.find_by(id: params[:id])
  end
end
