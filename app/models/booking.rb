class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :tool

  validates :start_date, :end_date, presence: true
  validates :end_date, comparison: { greater_than_or_equal_to: :start_date }

  def total_earnings
    rental_days = (end_date - start_date).to_i
    rental_days * tool.price
  end

  def total_payments
    rental_days = (end_date - start_date).to_i
    rental_days * tool.price
  end
end
