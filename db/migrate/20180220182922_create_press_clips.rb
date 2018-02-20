class CreatePressClips < ActiveRecord::Migration[5.1]
  def change
    create_table :press_clips do |t|
      t.string :title
      t.text :subtitle
      t.text :link
      t.text :image

      t.timestamps
    end
  end
end
