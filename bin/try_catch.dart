void main(){
    int? x;

  try{
    print(x!.isEven);
  }
  catch(e){
    print(e.toString());
  }
  
  print('end');
  
}