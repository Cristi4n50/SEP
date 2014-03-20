class SorceryCore < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string :username,         :null => false  
      t.string :email,            :default => nil 
      t.string :crypted_password, :default => nil
      t.string :salt,             :default => nil
      t.string :name
      t.string :lastname
      t.string :numberidentification
      t.string :phone
      t.string :ip
      t.string :charge
      t.references :tipodoc, index: true


      t.timestamps
    end
  end

  def self.down
    drop_table :users
  end
end