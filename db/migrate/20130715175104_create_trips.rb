class CreateTrips < ActiveRecord::Migration
  def change
    create_table :trips do |t|
      t.date :date
      t.string :title
      t.text :comment

      t.timestamps
    end
  end
end
