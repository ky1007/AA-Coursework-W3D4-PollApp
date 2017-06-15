class AnswerChoice < ApplicationRecord
  validates :answer_text, presence: true
  validates :question, presence: true


  belongs_to :questions,
    primary_key: :id,
    foreign_key: :question_id,
    class_name: :Question

  # belongs_to :users,
  #   primary_key: :id,
  #   foreign_key: :author_id,
  #   class_name: :User

  has_many repsonses


end
