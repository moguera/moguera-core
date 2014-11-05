class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.string :subtitle
      t.references :category, index: true
      t.text :body

      t.timestamps
    end
  end
end
