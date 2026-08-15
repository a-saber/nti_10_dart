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