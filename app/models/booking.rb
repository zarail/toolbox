class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :tool

  validates :start_date, :end_date, presence: true
  validates :end_date, comparison: { greater_than_or_equal_to: :start_date }
end
