class Comment < ApplicationRecord
  belongs_to :event
  validates_presence_of :body
end
