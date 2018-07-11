class Event < ApplicationRecord
validates_presence_of :title, length: { minimum: 5 }
validates_presence_of :description, :venue, :location

end
