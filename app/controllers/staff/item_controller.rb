class Staff::ItemController < Staff::Base
  before_action :are_you_staff_member?, only: %i(item_edit search_of_item)
  include HowModel

  def item_post
  end

  def item_edit
    @how = {帽子: "hat", イヤーマフラー: "ear_muffler", ネクタイ: "tie", マフラー: "muffler", タイピン: "tie_pin", シャツ: "shurt", 'ニット/セーター': "knit", ベスト: "vest", ジャケット: "jacket", コート: "coat", チーフ: "pocket_chief", カフリンクス: "cuff_link", ラペルピン: "lapel_pin", 手袋: "glove", パンツ: "pant", ベルト: "belt", 靴下: "sock", 靴: "shoe", その他: "other"}
  end

  def search_of_item
    # binding.pry
    item = params[:item]
    @item = select_model.where(staff_member: @current_staff.id, code: params[:product_code])
  end
end
