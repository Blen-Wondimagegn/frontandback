class CreateDiets < ActiveRecord::Migration[6.1]
  def change
    create_table :diets do |t|
      t.string :name
      t.string :gender
      t.integer :height
      t.integer :age
      t.string :diet_type
      t.integer :start_weight
      t.integer :lost_weight
      t.integer :duration

      t.timestamps
    end
  end
end
