class CreateFellowships < ActiveRecord::Migration
  def change
    create_table :fellowships do |t|
      t.integer :partner_id
      t.integer :trip_id

      t.timestamps
    end
  end
end
