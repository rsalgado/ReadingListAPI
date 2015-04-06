require 'test_helper'

class CreatingBooksTest < ActionDispatch::IntegrationTest
  
  test "creates new book" do
    post '/books', { book: { 
      title: 'Pragmatic Programmer', 
      rating: 5} }.to_json, 
    { 'Accept' => Mime::JSON, 'Content-Type' => Mime::JSON.to_s }
    
    assert_equal 201, response.status
    assert_equal Mime::JSON, response.content_type
    
    book = json(response.body)[:book]
    assert_equal book_url(book[:id]), response.location
    assert_equal 'Pragmatic Programmer', book[:title]
    assert_equal 5, book[:rating]
  end
  
  test "does not create books with invalid data" do
    post '/books', { book: { 
      title: nil, 
      rating: 5} }.to_json, 
    { 'Accept' => Mime::JSON, 'Content-Type' => Mime::JSON.to_s }
    
    assert_equal 422, response.status
    
  end
  
end
