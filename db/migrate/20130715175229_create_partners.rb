class CreatePartners < ActiveRecord::Migration
  def change
    create_table :partners do |t|
      t.string :fname
      t.string :lname

      t.timestamps
    end
  end
end
