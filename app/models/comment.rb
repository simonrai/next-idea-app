class Comment < ActiveRecord::Base

	belongs_to :user
	belongs_to :idea, counter_cache: :comment_count
	has_many :comment_votes

end