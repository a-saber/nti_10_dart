void main(){
  int start =0;
  int end = 10;
  int sum =0;
  int evenCount =0;
  int oddCount =0;
  for(int i=start; i<end; i++){
    sum += i;
    print(i);
    if(i.isEven){
      evenCount++;
    }
    else{
      oddCount++;
    }
  }
  print('Sum: $sum');
  print('Even: $evenCount');
  print('Odd: $oddCount');



  /*
  * * * 
  * * *
  * * *`
  * * * 
  */
  for(int i = 0; i<4; i++){
    String temp='';
    for(int j=0; j<3;j++){
      temp+='* ';
    }
    print(temp);
  }

  /*
  *
  * *
  * * * 
  * * * *
  */
    for(int i = 0; i<4; i++){
    String temp='';
    for(int j=0; j<=i;j++){
      temp+='* ';
    }
    print(temp);
  }
}