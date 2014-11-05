class CreatePostImages < ActiveRecord::Migration
  def change
    create_table :post_images do |t|
      t.references :post, index: true
      t.references :image, index: true

      t.timestamps
    end
  end
end
