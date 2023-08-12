class Word < ApplicationRecord
	validates :language, :content, presence: true
	validates :language, inclusion: {in: LanguageList::COMMON_LANGUAGES.map(&:name) }
end
