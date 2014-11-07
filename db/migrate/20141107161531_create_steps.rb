class CreateSteps < ActiveRecord::Migration
  def change
    create_table :steps do |t|
      t.text :body
      t.integer :order

      t.timestamps
    end
  end
end
