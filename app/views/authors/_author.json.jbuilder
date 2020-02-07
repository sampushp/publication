json.extract! author, :id, :first_name, :last_name, :dob, :created_at, :updated_at
json.url author_url(author, format: :json)
json.array author.books do |book|
  json.book_title book.title
end
