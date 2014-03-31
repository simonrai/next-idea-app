class Idea < ActiveRecord::Base

	belongs_to :user
	has_many :comments
	has_many :idea_votes

	validates :title, presence: true, length: { maximum: 140 }
	validates :content, presence: true, length: { maximum: 1000 } 

	
end