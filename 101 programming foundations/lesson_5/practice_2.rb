# How would you order this array of hashes based on the year of publication of each book, from the earliest to the latest?
books = [
  {title: 'One Hundred Years of Solitude', author: 'Gabriel Garcia Marquez', published: '1967'},
  {title: 'The Great Gatsby', author: 'F. Scott Fitzgerald', published: '1925'},
  {title: 'War and Peace', author: 'Leo Tolstoy', published: '1869'},
  {title: 'Ulysses', author: 'James Joyce', published: '1922'}
]

def book_sort(array)

array.sort_by do |value|
value[:published]

end
end

book_sort(books)


try_this = books.map do |value|
  value[:published]
  
end

puts try_this

puts books[0][:published]