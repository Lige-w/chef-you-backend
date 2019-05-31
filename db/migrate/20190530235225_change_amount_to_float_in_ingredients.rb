class ChangeAmountToFloatInIngredients < ActiveRecord::Migration[5.2]
  def change
    change_column :quantities, :amount, :float
  end
end
