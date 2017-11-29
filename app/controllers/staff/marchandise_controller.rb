class Staff::MarchandiseController < Staff::Base
  include SearchItem #Concern

  before_action :are_you_staff_member?, only: %i(index new confirm create show edit update destroy)
  before_action :set_marchandise_label, only: %i(new edit)

  def new
    @marchandise = Marchandise.new
  end

  def confirm
    @marchandise = @current_staff.marchandises.build(marchandise_params)
    render :new, alert: "編集してね" if @marchandise.invalid?
  end

  def create
    # binding.pry
    @marchandise = @current_staff.marchandises.build(marchandise_params)
    if params[:back]
      render :new, notice: "編集してね"
    # elsif @marchandise && @marchandise.save!
    #   redirect_to @marchandise, notice: "登録完了"
    # else
    #   render :new, alert: "確認してね"
    # end
    elsif @marchandise #marchandiseがあれば必須アイテムをセットし、その他アイテムをセットし、@marchandiseにアイテムの値段の合計を代入してさらにアイテムのIDを代入する
      if set_required_items
        set_any_items
        @marchandise.price = set_item_price
        input_items
        binding.pry

        if @marchandise.save! #@marchandiseがあり、その他の入力全ての処理が正常に終了したら
          redirect_to :staff_item_post, notice: '登録完了'
        else
          render :new, alert: '確認してね'
        end

      else  #@marchandiseは存在するが各種カラムの代入が正常に行われなかった時
        render :new, alert: '確認してね'
      end 

    else #なにはともあれFalseのとき
        binding.pry

        render :new
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
