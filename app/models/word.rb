class Word < ApplicationRecord
  validates :content, presence: true
  belongs_to :language
  belongs_to :user

  has_many :translations_association, class_name: 'Translation'
  has_many :translations, through: :translations_association, source: :translated_word, dependent: :destroy
  has_many :inverse_translations_association, class_name: 'Translation', foreign_key: 'translated_word_id'
  has_many :inverse_translations, through: :inverse_translations_association, source: :word
  accepts_nested_attributes_for :translations
  paginates_per 10
end
