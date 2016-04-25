class RenameColumnHotels < ActiveRecord::Migration
  def change
  	rename_column :hotels, :aasm, :aasm_state
  end
end
