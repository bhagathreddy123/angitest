class Word < ApplicationRecord
	validates :content, presence: true
	belongs_to :language
	belongs_to :user
	paginates_per 10
end
