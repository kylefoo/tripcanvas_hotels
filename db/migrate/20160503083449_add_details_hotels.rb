class AddDetailsHotels < ActiveRecord::Migration
  def change
  	add_column :hotels, :email, :string
  	add_column :hotels, :phone_no, :string
  	add_column :hotels, :website, :string	
  end
end
