class Rdv < ApplicationRecord
    belongs_to :user
    belongs_to :lesson
    validates :course, presence: true
end
