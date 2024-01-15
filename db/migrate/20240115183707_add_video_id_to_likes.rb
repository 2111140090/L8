class AddVideoIdToLikes < ActiveRecord::Migration[7.1]
  def change
    add_reference :likes, :video, null: false, foreign_key: true
  end
end
