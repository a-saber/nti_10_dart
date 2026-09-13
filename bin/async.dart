void main(){

  process01().then(
    (v){
      process02();
    }
  );
  process03();
  
}

Future process01() async{
  print('start 01');
  await Future.delayed(Duration(seconds: 2));
  print('end 01');
}
process02(){
  print('02');
}
process03(){
  print('03');
}

/*

{
    "status": true,
    "tasks": [
        {
            "created_at": "Fri, 04 Sep 2026 10:50:30 GMT",
            "description": "task 01 desc",
            "id": 50,
            "image_path": "https://res.cloudinary.com/dot3oekpp/image/upload/v1788519030/todos/ujyy6pcqsxmpm0kgmwwh.jpg",
            "title": "task 01"
        }
    ]
}
*/