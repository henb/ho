class RemoveColumnToHotel < ActiveRecord::Migration
  def change
    remove_column :hotels, :address, :string
  end
end
