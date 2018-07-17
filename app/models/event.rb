class Event < ApplicationRecord
	belongs_to :category
	belongs_to :organizer, class_name: "User", foreign_key: "user_id"
	has_many :comments, dependent: :destroy
	has_many :attendances, dependent: :destroy
	has_many :attendees, through: :attendances
validates_presence_of :title, length: { minimum: 5 }
validates_presence_of :description, :venue, :location

mount_uploader :image, ImageUploader
end
