class Blog < ActiveRecord::Base
  validates_presence_of :body, :title
  has_many :comments
  mount_uploader :image, ImageUploader
end
