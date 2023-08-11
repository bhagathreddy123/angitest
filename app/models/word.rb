class Word < ApplicationRecord
	validates :language, :content, presence: true
end
