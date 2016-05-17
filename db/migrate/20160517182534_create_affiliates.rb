class CreateAffiliates < ActiveRecord::Migration
  def change
    create_table :affiliates do |t|
      t.integer :affiliate_id
      t.string :affiliate_label
      t.integer :hotel_id
      t.integer :code

      t.timestamps null: false
    end
  end
end
