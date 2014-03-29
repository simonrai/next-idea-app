class AddComment < ActiveRecord::Migration
  
  def change
  	create_table :comments do |t|
  		t.integer :user_id
  		t.integer :idea_id
  		t.boolean :for_or_against
  		t.string :content
  		t.integer :vote_count
  	end
  end
end
