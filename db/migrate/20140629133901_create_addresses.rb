class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :countr
      t.string :state
      t.string :city
      t.string :street
      t.integer :hotel_id

      t.timestamps
    end
  end
end
