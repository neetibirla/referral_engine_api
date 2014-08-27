class CreateSignups < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email, :null => false, :unique => true
      t.string :first_name, :null => false, :default => ""
      t.string :last_name, :null => false, :default => ""
      t.string :referral_code, :null => false, :unique => true
      t.integer :referrer
      t.datetime :deleted_at
      t.timestamps
    end
    add_index :users, :email, :unique => true
    add_index :users, :referral_code, :unique => true
    add_index :users, :referrer
  end
end
