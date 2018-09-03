class CreateApartment < ActiveRecord::Migration[5.0]
  def change
    create_table :apartments do |t|
      t.string :name
      t.string :rent
      t.text :adress
      t.string :year
      t.text :info
      t.string :route1
      t.string :station1
      t.string :walk
      t.string :routes2
      t.string :station2
      t.string :walk2
    end
  end
end
