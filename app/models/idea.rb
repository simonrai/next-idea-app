class Idea < ActiveRecord::Base

	belongs_to :user
	has_many :comments
	has_many :ideavotes

	validates :title, presence: true, length: { maximum: 140 }
	valdates :content, presence: true, length: { maximum: 1000 } 

end