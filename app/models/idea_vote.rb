class IdeaVote < ActiveRecord::Base

	belongs_to :user
	belongs_to :idea, counter_cache: :vote_count

 end