class Staff::MarchandiseController < Staff::Base
  include SearchItem #Concern

  before_action :are_you_staff_member?, only: %i(index new confirm create show edit update destroy)
  before_action :set_marchandise_label, only: %i(new edit)

  def new
    @marchandise = Marchandise.new
  end

  def confirm
    @marchandise = @current_staff.marchandises.build(marchandise_params)
    # set_required_items #SearchItem
    # set_any_items #SearchItem
    # input_items #SearchItem
    if params[:marchandise][:shurt_code]
      # shurts = Shurt.where(staff_member: @current_staff.id)
      # shurt = shurts.find_by(code: params[:marchandise][:shurt_code])
      shurt = Shurt.where(staff_member: @current_staff.id, code: params[:marchandise][:shurt_code]).pluck(:id, :s_front, :code).flatten!
      # binding.pry
    end

    # shurt.each do |f|
    #   binding.pry
    # end
    @marchandise.shurt = shurt.id
    # binding.pry

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
    params.require(:marchandise).permit(:product_face, :code, :product_scene, :season, :description, :shurt)
  end

  def set_marchandise_label
    @season = Season.pluck(:product_season, :id)
    @scene = ProductScene.pluck(:marchandise_scene, :id)
  end

end
