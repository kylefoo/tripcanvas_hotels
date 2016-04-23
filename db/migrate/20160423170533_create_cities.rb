class CreateCities < ActiveRecord::Migration
  def change
    create_table :cities do |t|
      t.string :name
      t.integer :country_id
      t.string :status
      t.string :slug
      t.text :description

      t.timestamps null: false
    end
  end
end
