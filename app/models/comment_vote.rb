class CommentVote < ActiveRecord::Base

	belongs_to :comment, counter_cache: :vote_count

end