class CreateQuestions < ActiveRecord::Migration[5.0]

  def change
  	create_table :questions do |t|
    	t.text :description,:null => false, :default => ""
    	t.text :answer, :default => ""
    	t.text :one, :default => ""
    	t.text :two, :default => ""
    	t.text :three, :default => ""
  		t.timestamps null: false
  	end
  end

end
