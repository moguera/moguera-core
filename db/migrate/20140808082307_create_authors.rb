class CreateAuthors < ActiveRecord::Migration
  def change
    create_table :authors do |t|
      t.string :name
      t.references :role, index: true
      t.text :describe

      t.timestamps
    end
  end
end
