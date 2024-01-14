class User < ApplicationRecord
<<<<<<< HEAD
    has_many :videos, dependent: :destroy #ユーザを消すとツイートも消える
    has_many :likes, dependent: :destroy #ユーザを消すといいねも消える

    has_many :post_comments, dependent: :destroy

    validates :uid,  presence: true
    validates :uid, uniqueness: true
=======
    has_many :videos, dependent: :destroy
    has_many :likes, dependent: :destroy
    has_many :like_videos, through: :likes, source: :video
    
>>>>>>> Y
    validates :password, presence: true, confirmation: true
    
    attr_accessor :password, :password_confirmation

    def password=(val)
        if val.present?
            self.pass = BCrypt::Password.create(val)
        end
        @password = val
    end
end