class Student < ApplicationRecord
  validates :Surname, presence: true, length: {minimum: 2}
  validates :Street, presence: true, length: {minimum: 5}
  validates :House, presence: true
  validates :Flat, presence: true
  belongs_to :group
end
