module PicturesValidates
  extend ActiveSupport::Concern

  def picture_file_size phtoo
    if photo && photo.size > 5.megabytes
      errors.add(:pic, "5MB以下にしてね")
    end
  end
end
