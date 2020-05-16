class Photo < ApplicationRecord
  validates :image, presence: true
end
