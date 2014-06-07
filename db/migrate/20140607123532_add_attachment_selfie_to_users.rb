class AddAttachmentSelfieToUsers < ActiveRecord::Migration
  def self.up
    change_table :users do |t|
      t.attachment :selfie
    end
  end

  def self.down
    drop_attached_file :users, :selfie
  end
end
