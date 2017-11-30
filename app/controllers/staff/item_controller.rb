class Staff::ItemController < Staff::Base
  before_action :are_you_staff_member?, only: %i(item_edit search_of_item)
  include HowModel

  def item_post
  end


  def item_edit
    @how = {コーディネート: "marchandise" ,帽子: "hat", イヤーマフラー: "ear_muffler", ネクタイ: "tie", マフラー: "muffler", タイピン: "tie_pin", シャツ: "shurt", 'ニット/セーター': "knit", ベスト: "vest", ジャケット: "jacket", コート: "coat", チーフ: "pocket_chief", カフリンクス: "cuff_link", ラペルピン: "lapel_pin", OPR手袋: "glove", パンツ: "pant", ベルト: "belt", 靴下: "sock", 靴: "shoe", その他: "other"}
  end


  def search_of_item
    # binding.pry
    # item = select_model.where(staff_member: @current_staff.id, code: params[:product_code])
    # XXX ↑の方法だと一発で取得できるがインスタンスの型がActiveRecord_Relationになっていて、編集フォームに渡すのに不都合だと思うから少し遅くなりそうだけど↓にしてみる？
    # select_model = controllers/concerns/how_model
    items = select_model.where(staff_member: @current_staff.id)
    item = items.find_by('code = ?', params[:product_code])
    if item
      # binding.pry
      redirect_to controller: params[:item], action: 'edit', id: item.id
    else
        redirect_to :staff_item_edit, alert: "ないぞ"
      end
  end
end
