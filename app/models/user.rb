class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :messages, dependent: :destroy
  has_many :rdv, dependent: :destroy

  has_one :chatroom, dependent: :destroy
  after_create :create_chatroom

  validates :first_name, presence: true
  validates :last_name, presence: true
  # has_one_attached :photo

end
