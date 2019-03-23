class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.text :name
      t.text :email
      t.text :image
      t.text :uid

      t.timestamps null: false
    end
  end
end
