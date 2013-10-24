class FixDestination < ActiveRecord::Migration
  def up
    add_column :trips, :destination_id, :integer
  end

  def down
  end
end
