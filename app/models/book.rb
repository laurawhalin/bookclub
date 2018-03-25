class Book < ApplicationRecord
  validates_presence_of :author, :average_rating, :description, :genre, :status, :title
end
