class AddIdea < ActiveRecord::Migration
	
  def change
  	create_table :ideas do |t|
			t.string :titke
			t.string :content
  		t.string :url
  		t.integer :user_id
  		t.integer :vote_count
  		t.integer :comment_count
  		t.integer :total_score
  	end
  end
end
