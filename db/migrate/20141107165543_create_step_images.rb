class CreateStepImages < ActiveRecord::Migration
  def change
    create_table :step_images do |t|
      t.references :step, index: true
      t.references :image, index: true

      t.timestamps
    end
  end
end
