json.extract! chatroom, :id, :user_id, :name, :description, :time_dur, :geo_coords, :created_at, :updated_at
json.url chatroom_url(chatroom, format: :json)