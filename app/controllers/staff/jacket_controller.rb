class Staff::JacketController < Staff::Base
  before_action :are_you_staff_member?, only: [:index, :new, :create, :show, :edit, :update, :destroy]

  def index
  end

  def new
    @jacket = Jacket.new
    @size = Size.pluck(:id, :product_size)
  end

  def confirm
    @jacket = @current_staff.jackets.build(jacket_params)
    render :new, alert: "確認してね" if @jacket.invalid?
  end

  def create
    @jacket = @current_staff.jackets.build(jacket_params)
    if params[:back]
      redirect_to new_jacket_staff_member, alert: "確認してね"
    elsif @jacket && @jacket.save
      redirect_to :staff_root
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
  def jacket_params
    params.require(:jacket).permit(:price, :size, :color, :pattern, :season, :scene, :description, :jacket_name, :jacket_code, :j_front, :j_back, :open_front, :closed_front, :j_cuff, :lapel, :j_inner, :j_inner_r, :j_inner_l, :j_button, :j_breast_pocket, :j_other_one, :j_other_two)
  end
end
