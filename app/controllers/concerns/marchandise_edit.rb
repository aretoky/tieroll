module MarchandiseEdit
  extend ActiveSupport::Concern


  def set_required_items_photos
    # TODO 本当は一回で取り出したいけど今はcarrierwaveの画像ファイルに重複があるからこの方法で実装する
    shurts = Shurt.where(staff_member: @current_staff.id)
    @shurt = shurts.find_by(id: @code.shurt_id)

    pants = Pant.where(staff_member: @current_staff.id)
    @pant = pants.find_by(id: @code.pant_id)

    socks = Sock.where(staff_member: @current_staff.id)
    @socks = socks.find_by(id: @code.sock_id)

    shoes = Shoe.where(staff_member: @current_staff.id)
    @shoes = shoes.find_by(id: @code.shoe_id)

  end


  def set_any_items_photos
    # @hat = Hat.where(staff_member: @current_staff.id, id: @code.hat).select(:hat_front)
    if @code.hat
      hats = Hat.where(staff_member: @current_staff.id)
      @hat = hats.find_by(id: @code.hat_id)
    end

    if @code.ear_muffler
      ear_mufflers = EarMuffler.where(staff_member: @current_staff.id)
      @ear_muffler = ear_mufflers.find_by(id: @code.ear_muffler_id)
    end

    if @code.tie_neck
      ties = TieNeck.where(staff_member: @current_staff.id)
      @tie = ties.find_by(id: @code.tie_neck_id)
    end

    if @code.muffler
      mufflers = Muffler.where(staff_member: @current_staff.id)
      @muffler = mufflers.find_by(id: @code.muffler_id)
    end

    if @code.tie_pin
      tie_pins = TiePin.where(staff_member: @current_staff.id)
      @tie_pin = tie_pins.find_by(id: @code.tie_pin_id)
    end

    if @code.knit
      knits = Knit.where(staff_member: @current_staff.id)
      @knit = knits.find_by(id: @code.knit_id)
    end

    if @code.vest
      vests = Vest.where(staff_member: @current_staff.id)
      @vest = vests.find_by(id: @code.vest_id)
    end

    if @code.jacket
      jackets = Jacket.where(staff_member: @current_staff.id)
      @jacket = jackets.find_by(id: @code.jacket_id)
    end

    if @code.coat
      coats = Coat.where(staff_member: @current_staff.id)
      @coat = coats.find_by(id: @code.coat_id)
    end

    if @code.pocket_chief
      chiefs = PocketChief.where(staff_member: @current_staff.id)
      @chief = chiefs.find_by(id: @code.pocket_chief_id)
    end

    if @code.cuff_link
      cuffs = CuffLink.where(staff_member: @current_staff.id)
      @cuff = cuffs.find_by(id: @code.cuff_link_id)
    end

    if @code.lapel_pin
      lapins = LapelPin.where(staff_member: @current_staff.id)
      @lapel_pin = lapins.find_by(id: @code.lapel_pin_id)
    end

    if @code.gant
      gloves = Gant.where(staff_member: @current_staff.id)
      @glove = gloves.find_by(id: @code.gant_id)
    end

    if @code.belt
      belts = Belt.where(staff_member: @current_staff.id)
      @belt = belts.find_by(id: @code.belt_id)
    end
  end
end
