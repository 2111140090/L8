class Video < ApplicationRecord
    has_one_attached :video
    has_many :post_comments, dependent: :destroy
end
