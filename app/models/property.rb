class Property < ActiveRecord::Base
  validates :address, :description, presence: true
  validates :price, numericality: {greater_than_or_equal_to: 0.01}
  validates :address, uniqueness: true
  validates :image_url, allow_blank: true, format: {
    with: %r{\.(gif|jpg|png)\Z}i,
    message: 'Must be a URL for GIF, JPG, or PNG image.'
  }
end
