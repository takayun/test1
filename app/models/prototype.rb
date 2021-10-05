class Prototype < ApplicationRecord
  belongs_to :user
  has_one_attached :image

  with_options presence: true do
    validates :price
    validates :car_maker
    validates :car_model
    validates :car_grade
    validates :body_color
    validates :vi_number
    validates :year
    validates :mileage
    validates :drive_system
    validates :transmission
    validates :inspection
    validates :image
  end
end
