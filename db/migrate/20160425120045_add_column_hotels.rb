class AddColumnHotels < ActiveRecord::Migration
  def change
  	add_column :hotels, :provider_id, :integer
  end
end
