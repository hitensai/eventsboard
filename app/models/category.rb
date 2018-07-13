class Category < ApplicationRecord
	validates_presence_of :name, length: { minimum: 5}
end
