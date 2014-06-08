class Selfie < ActiveRecord::Base
  belongs_to :event
  has_attached_file :image,
    :styles => { thumb: "100x100#", selfie_format: "210x210#", small: "300x300>", large: "600x600>"}, :default_url => "/images/:style/missing.png"

  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/

end
