class CreateChatrooms < ActiveRecord::Migration[5.0]
  def change
    create_table :chatrooms do |t|
      t.integer :user_id
      t.string :name
      t.text :description
      t.string :time_dur
      t.string :geo_coords

      t.timestamps
    end
  end
end
