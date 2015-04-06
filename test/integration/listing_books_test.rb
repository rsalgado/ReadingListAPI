require 'test_helper'

class ListingBooksTest < ActionDispatch::IntegrationTest
  setup do
    @sci_fi = Genre.create!(name: 'Science Fiction')
    
    @sci_fi.books.create!(title: "Star Trek", rating: 5)
    @sci_fi.books.create!(title: "Ender's Game", rating: 4)
  end
  
  test "listing books" do
    get '/books'
    
    assert_equal 200, response.status
    assert_equal Mime::JSON, response.content_type
    
    books = json(response.body)[:books]
    assert_equal Book.count, books.size
    book = Book.find(books.first()[:id])
    assert_equal @sci_fi, book.genre
  end
  
  test "list top rated books" do
    get '/books?rating=5'
    
    assert_equal 200, response.status
    assert_equal Mime::JSON, response.content_type
    assert_equal 1, json(response.body).length
  end
  
end
