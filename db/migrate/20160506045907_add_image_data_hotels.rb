class AddImageDataHotels < ActiveRecord::Migration
  def change
  	add_column :hotels, :image_data, :text
  end
end
