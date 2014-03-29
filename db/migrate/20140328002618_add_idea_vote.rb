class AddIdeaVote < ActiveRecord::Migration
  def change
  	create_table :idea_votes do |t|
  		t.integer :user_id
  		t.integer :idea_id
  		t.boolean :like
  	end
  end
end
