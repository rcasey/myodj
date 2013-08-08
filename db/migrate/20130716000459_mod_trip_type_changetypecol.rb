class ModTripTypeChangetypecol < ActiveRecord::Migration
  def up
    rename_column :trip_types, :type, :triptype
  end

  def down
  end
end
