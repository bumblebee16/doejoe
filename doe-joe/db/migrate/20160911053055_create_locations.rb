class CreateLocations < ActiveRecord::Migration[5.0]
  def change
    create_table :locations do |t|
      t.string :area
      t.string :coordinatorname
      t.integer :contact
      t.text :address
      t.belongs_to :partner
      t.timestamps
    end
  end
end
