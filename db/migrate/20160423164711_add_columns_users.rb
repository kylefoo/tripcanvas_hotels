class AddColumnsUsers < ActiveRecord::Migration
  def change
    add_column :users, :role, :string, default: 'user'
    add_column :users, :firstname, :string
    add_column :users, :lastname, :string
    add_column :users, :slug, :string, unique: true
  end
end
