class CreateSelfies < ActiveRecord::Migration
  def change
    create_table :selfies do |t|
      t.integer :event_id

      t.timestamps
    end
  end
end
