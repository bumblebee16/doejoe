class CreatePartners < ActiveRecord::Migration[5.0]
  def change
    create_table :partners do |t|
      t.string :name
      t.string :email
      t.text :remarks
      t.text :curriculum

      t.timestamps
    end
  end
end
