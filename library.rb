require_relative "book"

class Library
  def initialize
    @books = []
  end

  def run
    loop do
      puts "\n"
      puts "Welcome to the Library CLI!"
      puts "1. Add a Book"
      puts "2. List all Books"
      puts "3. Exit"
      print "Choose an option: "
      option = gets.chomp.to_i
      puts "\n"
      case option
      when 1
        add_book
      when 2
        list_books
      when 3
        puts "Thank you for visiting the Library CLI. Goodbye!"
        break
      else
        puts "Invalid option. Please try again."
      end
    end
  end

  private

  def add_book
    print "Enter book title: "
    title = gets.chomp
    print "Enter author name: "
    author = gets.chomp
    @books << Book.new(title, author)
    puts "Book added successfully!"
  end

  def list_books
    puts "Books in the collection:"
    @books.each(&:to_s)
  end
end
