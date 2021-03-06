class Profile < ApplicationRecord
  belongs_to :user
  mount_uploader :person_image, ImageUploader
  mount_uploader :background_image, ImageUploader

  enum status: { application: 0, agreement: 1, end: 2 }

  # has_many :travelplans, dependent: :destroy
  # has_many :relationlinks, dependent: :destroy
  # has_many :SNSaccounts, dependent: :destroy
  # has_many :profile_tags, dependent: :destroy
  # has_many :tags, through: :profile_tags, dependent: :destroy
  # has_one :address, dependent: :destroy
end
