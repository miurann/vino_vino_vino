class Choice < ApplicationRecord
  belongs_to :question

  validates :content, presence: true
  validates :correct_answer, presence: true
end
