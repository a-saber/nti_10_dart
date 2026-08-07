class Book{
  late String title;
  late String author;
  late int pages;

  void displayInfo(){
    print('Title: $title');
    print('Author: $author');
    print('Pages: $pages');
  }

  Book({required this.title, required this.author, required this.pages});
  Book.test(this.author);
}
void main(){
  Book b1 = Book(title: 'Dart Programming', author: 'Ahmed', pages: -300);
  Book b2 = Book.test('Mohamed');
  b1.displayInfo();
  b2.displayInfo();
}

void sum(int x1, int x2){

}

/*
User
- name
- email
- age

-displayInfo
*/