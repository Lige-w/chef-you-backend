class ChangeAmountToStringInIngredients < ActiveRecord::Migration[5.2]
  def change
    change_column :quantities, :amount, :string
  end
end
