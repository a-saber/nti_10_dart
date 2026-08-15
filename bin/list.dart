class Car{}
void main(){
  List<int> l = [-1, -2, -3, 0, 1 , 2, 3, 4, 5];
    l.removeWhere(
      (x)=> x.isNegative
    );
    print(l);
  l=  l.map(
    (e)=> e*2
  ).toList();
    print(l);
    // l.firstWhere(test)
    

  // l.add(6);
  // l.addAll([7, 8, 9, 3]);
  // l.insert(1, -1);
  // l.insertAll(3, [-2, -3]);
  // print(l);
  // print(l.remove(30));
  // // l.removeWhere()
  // l[0] = 100;
  // print(l);

  // for(int i=0; i<l.length; i++){
  //   l[i] = l[i] * 2;
  // }
  // print(l);

  // l.forEach(
  //   (int element){
  //     print(element);
  //   }
  // );



}