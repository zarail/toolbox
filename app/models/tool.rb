class Tool < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy

  validates :name, :price, presence: true
  validates :price, numericality: true
end
