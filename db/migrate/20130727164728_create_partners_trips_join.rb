class CreatePartnersTripsJoin < ActiveRecord::Migration
  def up
    create_table 'partners_trips', :id => false do |t| 
      t.column 'partner_id', :integer
      t.column 'trip_id', :integer
    end
  end

  def down
    drop_table 'partners_trips'
  end
end
