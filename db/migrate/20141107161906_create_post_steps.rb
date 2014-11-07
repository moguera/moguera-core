class CreatePostSteps < ActiveRecord::Migration
  def change
    create_table :post_steps do |t|
      t.references :post, index: true
      t.references :step, index: true

      t.timestamps
    end
  end
end
