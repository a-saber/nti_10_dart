int? x;

void main(){
  // x= 4;
  bool isEven = x?.isEven ?? false;
  print('Is Even: $isEven');

String? name;
int? age;
String? phone;
bool? isOld;

age = 30;
if(age != null){
  isOld = age > 50;
}
 print(name?.length);
 print(phone?.contains('1'));
}
/*
- name => nullable
- age => nullable
- phone => nullable
- isOld => nullable (age > 50)
- print length of name 
- print if phone contains number 1
*/