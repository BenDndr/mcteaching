class Lesson < ApplicationRecord
    has_one :rdv, dependent: :destroy 

    validates :date, presence: true
    validates :length, presence: true
    validates :beginning, presence: true
end
