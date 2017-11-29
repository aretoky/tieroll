require 'nkf'

module Normalization
  extend ActiveSupport::Concern

  def normalize_as_text string
    NKF.nkf('-w -Z1', string).strip if string
  end

end
