class Question < ApplicationRecord
  validates :question_text, presence: true
  belongs_to :polls,
    primary_key: :id,
    foreign_key: :poll_id,
    class_name: :Poll

  has_many :answers,
    primary_key: :id,
    foreign_key: :answer_id,
    class_name: :AnswerChoice
  has_many :responses
  through :answer


end
