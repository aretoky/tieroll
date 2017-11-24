class Staff::MarchandiseController < Staff::Base
  include SearchItem #Concern

  before_action :are_you_staff_member?, only: %i(index new confirm create show edit update destroy)
  before_action :set_marchan, only: %i(new edit)

  def new
    @marchandise = Marchandise.new
  end

  def confirm
    render :new, alert: "編集してね" if @marchandise.invalid?
  end

  def create
    binding.pry

    @marchandise = @current_staff.marchandises.build(marchandise_params)
    if params[:back]
      render :new, notice: "編集してね"
    elsif @marchandise && @marchandise.save!
      redirect_to @marchandise, notice: "登録完了"
    else
      render :new, alert: "確認してね"
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def marchandise_params
    params.require(:main_product).permit(:product_face, :code, :product_scene, :season, :description)
  end

  def set_marchan
    @season = Season.pluck(:product_season, :id)
    @scene = ProductScene.pluck(:marchandise_scene, :id)
  end
end
