class Book < ApplicationRecord
  has_one_attached :photo

  def self.search(search)
    if search
      Book.find_by(title: search)
      if @book
        self.where(book_id: book)
      else
        Book.all
      end
    else
      Book.all
    end
  end
end
