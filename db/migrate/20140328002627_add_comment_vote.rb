class AddCommentVote < ActiveRecord::Migration
  def change
  	create_table :comment_votes do |t|
  		t.integer :comment_id
  		t.integer :idea_id
  		t.boolean :upvote
  end
end