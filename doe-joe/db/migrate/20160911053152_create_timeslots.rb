class CreateTimeslots < ActiveRecord::Migration[5.0]
  def change
    create_table :timeslots do |t|
      t.string :day
      t.time :start
      t.time :end
      t.integer :noofseats
      t.belongs_to :location

      t.timestamps
    end
  end
end
