class User < ActiveRecord::Base

	has_many :ideas
	has_many :comments
	has_many :idea_votes
	has_many :comment_votes

	validates :username, presence: true, length: { maximum: 50 }, uniqueness: true 

	validates :password, presence: true

	validates :email, presence: true, length: { maximum: 100 }, uniqueness: true

end