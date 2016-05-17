class AddArticlesToHotels < ActiveRecord::Migration
  def change
  	add_column :hotels, :articles, :string, array: true, default: []	
  end
end
