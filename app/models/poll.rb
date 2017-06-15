class Poll < ApplicationRecord
  validates :title, presence: true, uniqueness: true
  belongs_to :user,
    primary_key: :id,
    foreign_key: :author_id,
    class_name: :User

  has_many :questions,
    primary_key: :id,
    foreign_key: :question_id,
    class_name: :Question

end
