class Photo < ApplicationRecord
  validates :product_face, presence: true
  validates :product_id, presence: true, uniqueness: true


  mount_uploader :product_face, ProductFaceUploader
  mount_uploader :j_front, J_FrontUploader
  mount_uploader :j_back, J_Backuploader
  mount_uploader :open_front, Open_FrontUploader
  mount_uploader :closed_front, Closed_FrontUploader
  mount_uploader :lapel, LapelUploader
  mount_uploader :j_hem, J_HemUploader
  mount_uploader :j_button, J_ButtonUploader
  mount_uploader :j_inner, J_InnerUploader
  mount_uploader :j_r_inner, J_R_InnerUploader
  mount_uploader :j_l_inner, J_L_InnerUploader
  mount_uploader :j_pocket, J_PocketUploader
  mount_uploader :j_breast_pocket, J_Breast_PocketUploader
  mount_uploader :s_front, S_FrontUploader
  mount_uploader :s_back, S_BackUploader
  mount_uploader :s_hem, S_HemUploader
  mount_uploader :s_button, S_ButtonUploader
  mount_uploader :s_breast_pocket, S_Breast_PocketUploader
  mount_uploader :colar, ColarUploader
  mount_uploader :p_front, P_FrontUploader
  mount_uploader :p_back, P_BackUploader
  mount_uploader :p_inner, P_InnerUploader
  mount_uploader :belt_roop, Belt_RoopUploader
  mount_uploader :v_front, V_FrontUploader
  mount_uploader :v_back, V_BackUploader
  mount_uploader :v_inner, V_InnerUploader
  mount_uploader :v_buckle, V_BuckleUploader
  mount_uploader :tie_one, Tie_OneUploader
  mount_uploader :tie_two, Tie_TwoUploader
  mount_uploader :belt_one, Belt_OneUploader
  mount_uploader :belt_two, Belt_TwoUploader
  mount_uploader :shoes_one, Shoes_OneUploader
  mount_uploader :shoes_two, Shoes_TwoUploader
  mount_uploader :shoes_three, Shoes_ThreeUploader
  mount_uploader :other_one, Other_OneUploader
  mount_uploader :other_two, Other_TwoUploader
  mount_uploader :other_three, Other_ThreeUploader
  mount_uploader :other_four, Other_FourUploader
  mount_uploader :other_five, Other_FiveUploader
end
