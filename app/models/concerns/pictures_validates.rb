module PicturesValidates
  extend ActiveSupport::Concern

  def picture_file_size focus
    if focus.size > 5.megabytes
      errors.add(:pic, "5MB以下にしてね")
    end
  end
end
