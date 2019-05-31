class AddIndexToInstructions < ActiveRecord::Migration[5.2]
  def change
    add_column :instructions, :index, :integer
  end
end
