class Genre < ApplicationRecord
    has_many :books_genres
    # a genre can have many books
    has_many :books, through: :books_genres
end
