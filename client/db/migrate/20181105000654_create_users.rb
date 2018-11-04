class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :uid
      t.string :email
      t.string :token
      t.datetime :expires_at

      t.timestamps
    end
  end
end
