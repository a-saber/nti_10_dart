void main(){

  Map<int, String> m = {
    1 : 'ahmed',
    2 : 'karim',
    3 : 'mahmoud',
    4: 'mostafa'
  };

  m.addAll({
    1 : 'ahmed01',
    5 : 'ali',
    6 : 'mohamed'
  });

  m[10] = 'Ali';

  print(m.remove(1));

  
  
  print(m);
  print(m[66]?.contains('h'));

}
class Car{}
  

