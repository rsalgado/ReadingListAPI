class Books < ApplicationMailer
  def new_review(book)
    @book = book
    
    mail to: 'rsalgado03@gmail.com', subject: "New Review #{@book.title}"
  end
end
