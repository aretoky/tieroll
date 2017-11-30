module SearchItem
  extend ActiveSupport::Concern
  # XXX input_any_itemsを呼ぶときは先にset_required_itemsを呼ぶ事


  # シャツ、パンツ、靴下、靴は必ず存在する
  # 必ず存在するから入力があればってやらなくても良いと思うんだけど、update内でも使いまわしたいから入力があればってやることにする
  def set_required_items
    @shurt = Shurt.where('staff_member_id = ? AND code = ?', @current_staff.id, params[:marchandise][:shurt_code]).pluck(:id, :price, :s_front).flatten! if params[:marchandise][:shurt_code]
    @pant = Pant.where('staff_member_id = ? AND code = ?', @current_staff.id, params[:marchandise][:pant_code]).pluck(:id, :price, :p_side).flatten! if params[:marchandise][:pant_code]
    @socks = Sock.where('staff_member_id = ? AND code = ?', @current_staff.id, params[:marchandise][:sock_code]).pluck(:id, :price, :socks_one).flatten! if params[:marchandise][:sock_code]
    @shoes = Shoe.where('staff_member_id = ? AND code = ?', @current_staff.id, params[:marchandise][:shoe_code]).pluck(:id, :price, :shoe_front).flatten! if params[:marchandise][:shoe_code]
  end


  # 入力があれば引っ張ってくる
  # 中身は1つのレコードしか入らないのでflattenして1次元の配列に変換してアクセスしやすくする
  def set_any_items
    @hat = Hat.where('staff_member_id = ? AND code = ?', @current_staff.id, params[:marchandise][:hat_code]).pluck(:id, :price, :hat_front).flatten! if params[:marchandise][:hat_code]

    @ear_muffler = EarMuffler.where('staff_member_id = ? AND code = ?', @current_staff.id, params[:marchandise][:ear_muffler_code]).pluck(:id, :price, :ear_muffler_front).flatten! if params[:marchandise][:ear_muffler_code]

    @tie = TieNeck.where('staff_member_id = ? AND code = ?', @current_staff.id, params[:marchandise][:tie_code]).pluck(:id, :price, :tie_one).flatten! if params[:marchandise][:tie_code]

    @muffler = Muffler.where('staff_member_id = ? AND code = ?', @current_staff.id, params[:marchandise][:muffler_code]).pluck(:id, :price, :muffler_front).flatten! if params[:marchandise][:muffler_code]

    @tie_pin = TiePin.where('staff_member_id = ? AND code = ?', @current_staff.id, params[:marchandise][:tie_pin_code]).pluck(:id, :price, :tie_pin_one).flatten! if params[:marchandise][:tie_pin_code]

    @knit = Knit.where('staff_member_id = ? AND code = ?', @current_staff.id, params[:marchandise][:knit_code]).pluck(:id, :price, :knit_front).flatten! if params[:marchandise][:knit_code]

    @vest = Vest.where('staff_member_id = ? AND code = ?', @current_staff.id, params[:marchandise][:vest_code]).pluck(:id, :price, :v_front).flatten! if params[:marchandise][:vest_code]

    @jacket = Jacket.where('staff_member_id = ? AND code = ?', @current_staff.id, params[:marchandise][:jacket_code]).pluck(:id, :price, :j_front).flatten! if params[:marchandise][:jacket_code]

    @coat = Coat.where('staff_member_id = ? AND code = ?', @current_staff.id, params[:marchandise][:coat_code]).pluck(:id, :price, :coat_front).flatten! if params[:marchandise][:coat_code]

    @chief = PocketChief.where('staff_member_id = ? AND code = ?', @current_staff.id, params[:marchandise][:chief_code]).pluck(:id, :price, :chief_one).flatten! if params[:marchandise][:chief_code]

    @cuff = CuffLink.where('staff_member_id = ? AND code = ?', @current_staff.id, params[:marchandise][:cuff_link_code]).pluck(:id, :price, :cuff_link_one).flatten! if params[:marchandise][:cuff_link_code]

    @lapel_pin = LapelPin.where('staff_member_id = ? AND code = ?', @current_staff.id, params[:marchandise][:lapel_pin_code]).pluck(:id, :price, :lapel_pin_one).flatten! if params[:marchandise][:lapel_pin_code]

    @glove = Gant.where('staff_member_id = ? AND code = ?', @current_staff.id, params[:marchandise][:glove_code]).pluck(:id, :price, :glove_front).flatten! if params[:marchandise][:glove_code]

    @belt = Belt.where('staff_member_id = ? AND code = ?', @current_staff.id, params[:marchandise][:belt_code]).pluck(:id, :price, :belt_one).flatten! if params[:marchandise][:belt_code]

    @other = Other.where('staff_member_id = ? AND code = ?', @current_staff.id, params[:marchandise][:other_code]).pluck(:id, :price, :other_one).flatten! if params[:marchandise][:other_code]
  end


  def set_item_price
    total_price = 0
    total_price += @shurt[1] if @shurt
    total_price += @pant[1] if @pant
    total_price += @socks[1] if @socks
    total_price += @shoes[1] if @shoes

    total_price += @hat[1] if @hat
    total_price += @ear_muffler[1] if @ear_muffler
    total_price += @tie[1] if @tie
    total_price += @muffler[1] if @muffler
    total_price += @tie_pin[1] if @tie_pin
    total_price += @knit[1] if @knit
    total_price += @vest[1] if @vest
    total_price += @jacket[1] if @jacket
    total_price += @coat[1] if @coat
    total_price += @chief[1] if @chief
    total_price += @cuff[1] if @cuff
    total_price += @lapel_pin[1] if @lapel_pin
    total_price += @glove[1] if @glove
    total_price += @belt[1] if @belt
    total_price += @other[1] if @other
    return total_price
  end


  #FIXME もっと簡単に書けそう
  def input_items
    # シャツ、パンツ、靴下、靴は必ずあるものとする
    # 先に↑のset_required_itemsを呼ぶこと
    @marchandise.shurt_id = @shurt[0] if @shurt
    @marchandise.pant_id = @pant[0] if @pant
    @marchandise.sock_id = @socks[0] if @socks
    @marchandise.shoe_id = @shoes[0] if @shoes

    @marchandise.hat_id = @hat[0] if @hat
    @marchandise.ear_muffler_id = @ear_muffler[0] if @ear_muffler
    @marchandise.tie_neck_id = @tie[0] if @tie
    @marchandise.muffler_id = @muffler[0] if @muffler
    @marchandise.tie_pin_id = @tie_pin[0] if @tie_pin
    @marchandise.knit_id = @knit[0] if @knit
    @marchandise.vest_id = @vest[0] if @vest
    @marchandise.jacket_id = @jacket[0] if @jacket
    @marchandise.coat_id = @coat[0] if @coat
    @marchandise.pocket_chief_id = @chief[0] if @chief
    @marchandise.cuff_link_id = @cuff[0] if @cuff
    @marchandise.lapel_pin_id = @lapel_pin[0] if @lapel_pin
    @marchandise.gant_id = @glove[0] if @glove
    @marchandise.belt_id = @belt[0] if @belt
    @marchandise.other_id = @other[0] if @other
  end
end
