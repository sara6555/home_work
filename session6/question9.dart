/*Create a system to manage books in a library.
Implement a Book class with properties like title, author, isbn, and isAvailable.
Implement a Library class with methods:
- addBook(Book book): Adds a book to the library.
- borrowBook(String isbn): Marks a book as borrowed if available.
- returnBook(String isbn): Marks a book as available again.
- searchByTitle(String title): Returns books matching the title.
Ensure that the system correctly updates the book's availability*/

void main() {}

class Book {
  String title;
  String author;
  bool isbn;
  bool isAvailable = true;
  Book(this.author, this.title, this.isAvailable, this.isbn);
}

class Library extends Book {
  List<Book> books = [];

  Library(super.author, super.title, super.isAvailable, super.isbn);
  void addBook(Book book) {
    books.add(book);
    print('Adds a book $book to the library');
  }

  void borrowBook(String isbn) {
    if (isbn == super.isbn) {
      super.isAvailable = false;
    }
    void returnBook(String isbn) {
      if (isbn == super.isbn) {
        super.isAvailable = true;
      }
    }
  }

  List<Book> searchByTitle(String title) {
    if (title == super.title) {
      return books;
    } else {
      return [];
    }
  }
}
