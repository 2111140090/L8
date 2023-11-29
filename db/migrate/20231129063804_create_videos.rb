class CreateVideos < ActiveRecord::Migration[7.1]
  def change
    create_table :videos do |t|
      t.string :title
      t.text :introduction

      t.timestamps
    end
  end
end
