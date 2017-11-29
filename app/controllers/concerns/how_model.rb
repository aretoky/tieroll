module HowModel
  extend ActiveSupport::Concern

  private
  def select_model
    case params[:item]
    when 'marchandise'
      return Marchandise
    when 'belt'
      return Belt
    when 'coat'
      return Coat
    when 'cuff_link'
      return CuffLink
    when 'ear_muffler'
      return EarMuffler
    when 'glove'
      return Gant
    when 'hat'
      return Hat
    when 'jacket'
      return Jacket
    when 'knit'
      return Knit
    when 'lapel_pin'
      return LapelPin
    when 'muffler'
      return Muffler
    when 'pant'
      return Pant
    when 'pocket_chief'
      return PocketChief
    when 'shoe'
      return Shoe
    when 'shurt'
      return Shurt
    when 'sock'
      return Sock
    when 'tie'
      return TieNeck
    when 'tie_pin'
      return TiePin
    when 'vest'
      return Vest
    when 'other'
      return Other
    end
  end
end
