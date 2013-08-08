class CreateTripSubTypes < ActiveRecord::Migration
  def change
    create_table :trip_sub_types do |t|
      t.string :subtype

      t.timestamps
    end
  end
end
