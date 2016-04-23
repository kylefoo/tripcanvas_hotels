class ChangeColumnInCountries < ActiveRecord::Migration
  def change
    remove_column :countries, :country_id
  end
end
