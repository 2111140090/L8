class Video < ApplicationRecord
    has_one_attached :video
<<<<<<< HEAD
    
    has_many :likes, dependent: :destroy
    has_many :like_users, source: :user, through: :likes
    def like(user)
        likes.create(user_id: user.id)
    end

    def unlike(user)
        likes.find_by(user_id: user.id).destroy
    end

    def liked?(user) #いいね済みか調べる(true / false)
        like_users.include?(user)
    end
end

=======
end
>>>>>>> 755402eefd9b953cb0a155bcbd3cdf0f59b06b82
