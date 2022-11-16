class Group < ApplicationRecord
  has_many :students
  validates :Name, presence: true, length: {minimum: 2}
end
