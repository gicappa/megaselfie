class User < ActiveRecord::Base
  has_attached_file :selfie, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :selfie, :content_type => /\Aimage\/.*\Z/
end
