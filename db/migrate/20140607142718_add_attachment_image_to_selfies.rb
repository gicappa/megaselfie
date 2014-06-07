class AddAttachmentImageToSelfies < ActiveRecord::Migration
  def self.up
    change_table :selfies do |t|
      t.attachment :image
    end
  end

  def self.down
    drop_attached_file :selfies, :image
  end
end
