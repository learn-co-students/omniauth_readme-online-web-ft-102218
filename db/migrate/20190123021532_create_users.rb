class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :code
      t.string :client_secret
      t.string :client_id

      t.timestamps null: false
    end
  end
end
