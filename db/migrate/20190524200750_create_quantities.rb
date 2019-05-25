class CreateQuantities < ActiveRecord::Migration[5.2]
  def change
    create_table :quantities do |t|
      t.belongs_to :recipe
      t.belongs_to :ingredient
      t.integer :amount
      t.string :unit

      t.timestamps
    end
  end
end
