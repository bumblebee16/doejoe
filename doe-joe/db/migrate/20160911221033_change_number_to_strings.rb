class ChangeNumberToStrings < ActiveRecord::Migration[5.0]
  def change
  	remove_column :locations, :contact
  	add_column :locations, :contact, :string
  end
end
