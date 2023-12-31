class Language < ApplicationRecord
  validates :name, presence: true, inclusion: {in: LanguageList::COMMON_LANGUAGES.map(&:name) }

  has_many :words
end
