class Staff::MarchandiseController < Staff::Base
  include SearchItem #Concern
  include MarchandiseEdit #Concern


  before_action :are_you_staff_member?, only: %i(index new confirm create show edit update destroy)
  before_action :set_marchandise_label, only: %i(new edit)
  before_action :set_marchandise, only: %i(edit update destroy)


  def index
    @marchandise = Marchandise.where(staff_member: @current_staff.id)
    # binding.pry
  end


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
    elsif @marchandise #marchandiseがあれば必須アイテムをセットし、その他アイテムをセットし、@marchandiseにアイテムの値段の合計を代入してさらにアイテムのIDを代入する
      set_required_items #SearchItem
      set_any_items #SearchItem
      @marchandise.price = set_item_price #SearchItem
      input_items #SearchItem
      if @marchandise.save! #@marchandiseがあり、その他の入力全ての処理が正常に終了したら
        redirect_to :staff_item_post, notice: '登録完了'
      else
        render :new, alert: '確認してね'
      end

    else #なにはともあれFalseのとき
        # binding.pry
        render :new, alert: '確認してね'
    end

  end


  def edit
    # set_required_items
    # binding.pry
    # @shurt = Shurt.find_by(id: @code.shurt)
    set_required_items_photos #MarchandiseEdit
    set_any_items_photos #MarchandiseEdit
    # binding.pry
  end


  def update
    # 検証でeditフォームに飛んだ時様に現在存在している画像を探してくる
    set_required_items_photos #MarchandiseEdit
    set_any_items_photos #MarchandiseEdit
    # binding.pry
    if @marchandise.invalid?
      render :edit, alert: '確認してね'
    elsif @marchandise #@marchandiseが存在していれば、各種入力に従ったアイテムを探してきて@marchandiseに代入する
      set_required_items #SearchItems
      set_any_items #SearchItems
      input_items #SearchItems
      @marchandise.price = set_item_price #SearchItems

      if @marchandise.update(marchandise_params)
        redirect_to :staff_marchandise_index, notice: '更新完了'
      end

    else
      render :edit, alert: '確認してね'
    end
  end


  def destroy
    @marchandise.destroy
    redirect_to :staff_marchandise_index, notice: 'グッバイフォーエバー'
  end


  private

    def marchandise_params
      params.require(:marchandise).permit(:product_face, :code, :product_scene, :season, :description)
    end

    def set_marchandise_label
      @season = Season.pluck(:product_season, :id)
      @scene = ProductScene.pluck(:marchandise_scene, :id)
    end

    def set_marchandise
      @marchandise = Marchandise.find_by(id: params[:id])
    end

  # def set_required_items
  #   @shurt = Shurt.find_by(id: @marchandise.shurt)
  # end

end
