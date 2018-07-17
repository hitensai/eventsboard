class Comment < ApplicationRecord
  belongs_to :event
  belongs_to :author, class_name: "User"
  validates_presence_of :body
end
