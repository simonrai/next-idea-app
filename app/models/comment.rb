class Comment < ActiveRecord::Base

	belongs_to :user
	belongs_to :idea
	has_many :comment_votes


end