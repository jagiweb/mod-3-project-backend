class CreateFoods < ActiveRecord::Migration[6.0]
  def change
    create_table :foods do |t|
      t.references :day, null: false, foreign_key: true
      t.string :name
      t.integer :calories

      t.timestamps
    end
  end
end
