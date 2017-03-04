class CreateAdminUsers < ActiveRecord::Migration[5.0]
  
	def change
    create_table :admin_users do |t|
        t.integer :year,:null => false
    	t.string :first_name,:null => false
    	t.string :last_name,:null => false
    	t.string :section,:null => false
    	t.integer :roll_number,:null => false
    	t.string :email,:null => false
        t.string :user_mobile,:null => false, :unique => true
        t.string :father,:null => false
        t.string :father_occupation,:null => false
        t.string :father_mobile,:null => false
        t.string :mother,:null => false
        t.string :mother_occupation,:null => false
        t.string :mother_mobile,:null => false
        t.string :interests,:null => false
        t.string :goals,:null => false
        t.string :skills,:null => false
        t.string :strengths,:null => false
        t.string :weaknesses,:null => false
        t.string :username,:null => false, :unique => true
        t.string :password_digest
        t.boolean :superuser, :default => false
        t.string :answered, :default => ""
        t.integer :score, :default => -1
    	t.timestamps null: false
    end
  end
 
end
