class CreateInstructions < ActiveRecord::Migration[5.2]
  def change
    create_table :instructions do |t|
      t.text :description
      t.belongs_to :recipe

      t.timestamps
    end
  end
end
