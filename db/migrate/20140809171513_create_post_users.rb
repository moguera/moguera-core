class CreatePostUsers < ActiveRecord::Migration
  def change
    create_table :post_users do |t|
      t.references :post, index: true
      t.references :user, index: true

      t.timestamps
    end
  end
end
