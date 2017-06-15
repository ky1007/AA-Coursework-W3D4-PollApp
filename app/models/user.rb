class User < ApplicationRecord
  validates :username, presence: true, uniqueness: true

  has_many :polls,
    primary_key: :id,
    foreign_key: :author_id,
    class_name: :Poll
    # class_name: :User

  has_many :responses,
    primary_key: :id,
    foreign_key: :author_id,
    class_name: :Response



end
