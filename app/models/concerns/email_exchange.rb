require 'nkf'
module EmailExchange
  extend ActiveSupport::Concern

  # emailに含まれる全角スペース、英数などを半角に、前後の空白も除去
  def normalize_as_email string
    NKF.nkf('-w -Z1', string).strip if string
  end
end
