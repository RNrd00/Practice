class Room < ApplicationRecord
    
 has_many :chats
 has_many :user_rooms
    
 validates :room, presence:true, length:{maximum:200}
end
