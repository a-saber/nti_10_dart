/*
var 
dynamic
Object
*/

import 'package:dio/dio.dart';

void main(){

  int x = 5;
  var y = 6;
  

  var d = Dio();
  var k = 'ahmed';
  k.length;

  dynamic s = "ahmed";
  (s as String).length;
  if(s is String){
    print(s.length);
  }
  s= 5;
  s= 6.5;
  s= true;
  s = Dio();

  Object p = 5;
  (p as int).isEven;
  p = 'ahmed';
  p = 6.5;
  p = Dio();

}