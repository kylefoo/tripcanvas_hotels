class CreateHotels < ActiveRecord::Migration
  def change
    create_table :hotels do |t|
      t.string :name
      t.integer :city_id
      t.string :aasm
      t.string :slug
      t.text :description
      t.string :address

      t.timestamps null: false
    end
  end
end
