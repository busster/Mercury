class CreateEmotes < ActiveRecord::Migration[5.0]
  def change
    create_table :emotes do |t|
      t.integer :user_id
      t.attachment :image

      t.timestamps
    end
  end
end
