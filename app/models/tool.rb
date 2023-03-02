class Tool < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy

  validates :name, :price, presence: true
  validates :price, numericality: true

  include PgSearch::Model
  pg_search_scope :search_name_city_description,
    against: [ :name, :city, :description ],
    using: {
      tsearch: { prefix: true }
    }
end
