class Response < ApplicationRecord
  validates :question_id, presence: true

  belongs_to :answer_choices,
    primary_key: :id,
    foreign_key: :answer_id,
    class_name: :AnswerChoice

  # belongs_to :questions,
  #   primary_key: :id,
  #   foreign_key: :question_id,
  #   class_name: :Question
    has_one :question
    through :answer_choices

  belongs_to :users,
    primary_key: :id,
    foreign_key: :author_id,
    class_name: :User
end
