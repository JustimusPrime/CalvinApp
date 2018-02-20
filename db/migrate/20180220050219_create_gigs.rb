class CreateGigs < ActiveRecord::Migration[5.1]
  def change
    create_table :gigs do |t|
      t.date :date
      t.time :time
      t.string :show_name
      t.text :location
      t.text :link

      t.timestamps
    end
  end
end
