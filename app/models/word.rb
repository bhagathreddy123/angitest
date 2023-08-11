class Word < ApplicationRecord
	validates :language, :value, presence: true
end
