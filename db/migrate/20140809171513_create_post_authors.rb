class CreatePostAuthors < ActiveRecord::Migration
  def change
    create_table :post_authors do |t|
      t.references :post, index: true
      t.references :author, index: true

      t.timestamps
    end
  end
end
