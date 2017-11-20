class Staff::ItemController < Staff::Base
  before_action :are_you_staff_member?, only: %i(item_edit search_of_item)
  include HowModel
  
  def item_post
  end

  def item_edit
    @how = {ベルト: "belt", コート: "coat", カフリンクス: "cuff_link", イヤーマフ: "ear_muffler", 手袋: "glove", ハット: "hat", ジャケット: "jacket", 'ニット/セーター': "knit", ラペルピン: "lapel_pin", マフラー: "muffler", パンツ: "pant", チーフ: "pocket_chief", 靴: "shoe", シャツ: "shurt", 靴下: "sock", ネクタイ: "tie", タイピン: "tie_pin", ベスト: "vest", その他: "other"}
  end

  def search_of_item
    # binding.pry
    item = params[:item]
    @item = select_model.where(staff_member: @current_staff.id, code: params[:product_code])
  end
end
