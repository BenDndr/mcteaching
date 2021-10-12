class Lesson < ApplicationRecord
    belongs_to :User
    validates :date, presence: true
    validates :length, presence: true
end
