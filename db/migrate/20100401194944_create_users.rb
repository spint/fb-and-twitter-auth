class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string :login, :default => nil, :null => true
      t.string :crypted_password, :default => nil, :null => true
      t.string :password_salt, :default => nil, :null => true
      t.string :persistence_token
      t.integer :login_count
      t.datetime :last_request_at
      t.datetime :last_login_at
      t.datetime :current_login_at
      t.string :last_login_ip
      t.string :current_login_ip


      t.string :oauth_token
      t.string :oauth_secret
      t.string :oauth_token

      t.timestamps
    end
  end

  def self.down
    drop_table :users
  end
end
