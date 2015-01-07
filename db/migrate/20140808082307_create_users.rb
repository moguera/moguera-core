class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name, :email, :password, :salt, null: false
      t.boolean :dm, :notify, default: true
      t.references :role, index: true
      t.text :describe

      t.timestamps
    end
  end
end
