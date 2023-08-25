class Poster < ApplicationRecord
  belongs_to :user
  has_one_attached :photo
  has_many :bookings, dependent: :destroy
  validates :photo, presence: true

  include PgSearch::Model


  pg_search_scope :search_by_band_name_and_description,
                  against: [:band_name, :description],
                  using: {
                    tsearch: { prefix: true }
                  }

end
