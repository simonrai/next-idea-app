class IdeaVote < ActiveRecord::Base

	belongs_to :user
	belongs_to :idea

	# after_create: increase_idea_vote_count, if: :user

	# private

	# def increase_idea_vote_count
	# 	self.idea.vote_count += 1
	# end

end