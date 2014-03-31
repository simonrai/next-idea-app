class CommentVote < ActiveRecord::Base

	# after_create: increase_comment_vote_count, if: :comment 

	# private
	
	# def increase_comment_vote_count
	# 	self.comment.vote_count += 1
	# end

end