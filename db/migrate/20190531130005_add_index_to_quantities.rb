class AddIndexToQuantities < ActiveRecord::Migration[5.2]
  def change
    add_column :quantities, :index, :integer
  end
end
