void calculate(int Function(int x1, int x2) operation)
{
  print(' start calculate');
  operation(10, 20);
  print(' end calculate');
}
// int op(int x1, int x2){
//   return x1 + x2;
// }

void main(){
  calculate(
    (x1, x2)=> x1 + x2
  );
}

int test1(int s1, int s2){

  return s1 * s2;
}
int test2(int s1, int s2) => s1 * s2;
