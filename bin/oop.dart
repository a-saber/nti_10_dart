class Book{
  late String title;
  late String author;
  late int pages;

  void displayInfo(){
    print('Title: $title');
    print('Author: $author');
    print('Pages: $pages');
  }

  Book({required this.title, required this.author, required int pages}){
    if(pages > 0){
      this.pages = pages;
    }
  }
}
void main(){
  Book b1 = Book(title: 'Dart Programming', author: 'Ahmed', pages: -300);
  b1.displayInfo();
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