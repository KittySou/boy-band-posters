class Booking < ApplicationRecord
  belongs_to :poster, class_name: 'Poster'
  belongs_to :user
end
