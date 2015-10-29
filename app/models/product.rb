class Product < ActiveRecord::Base
  has_many :orders
  has_many :comments
  belongs_to :users

  mount_uploader :picture, PictureUploader

  validates :name, presence: true
  validates :description, presence: true
  validate :picture_size

  def average_rating
    comments.average(:rating).to_f
  end

  private

  def picture_size
    if picture.size > 5.megabytes
      errors.add(:picture, "Should be less then 5MB.")
    end
  end


end
