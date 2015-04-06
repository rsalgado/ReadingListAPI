# Genres
fantasy = Genre.create(name: 'Fantasy')
dystopian = Genre.create(name: 'Dystopian Fiction')
drama = Genre.create(name: 'Drama')


# Books
fantasy.books.create(title: 'The Hobbit', author: 'J. R. R. Tolkien')
fantasy.books.create(title: 'Harry Potter and the Half-Blood Prince', author: 'J. K. Rowling')
drama.books.create(title: 'The Book Thief', author: 'Markus Zusak')
drama.books.create(title: 'The Solitude of Prime Numbers', author: 'Paolo Giordano')
dystopian.books.create(title: '1984', author: 'George Orwell')
dystopian.books.create(title: 'Brave New World', author: 'Aldous Huxley')
