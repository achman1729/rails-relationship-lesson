class Book < ApplicationRecord
  belongs_to :author
  has_many :books_genres
  # one book can have many genres
  has_many :genres, through: :books_genres
  has_many :book_list_items
  # one book can have many users
  has_many :users, through: :book_list_items
  validates :title, presence: true, length: { minimum: 2 }
end
