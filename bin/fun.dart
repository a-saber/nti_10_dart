// ReturnType funName () 
// {

// }
// + - * /

void add (int x1, int x2, String op)
{
  int sum = x1 + x2 ;
  print('Sum: $sum');
}
void multipy({required int x1, int x2 = 1, required String op})
{
  int result = x1 * x2;
}
void division(String op1, String op2, {required int x1, required int x2})
{
  double result = x1 / x2;
  print('Result: $result');
}
void main(){
  division('/', x1: 30, x2: 60, '*');
  multipy(op: '+', x1: 20,x2: 30);
  add(20, 10, '+');
  
  // add(2,2, '+');
  // add(2,2, '-');
  // add(2,2, '*');
  // add(2,2, '/');
  sumMultiple(2, 2,  0,4);
}


void sumMultiple(int x1, int x2, [int x3=0, int x4=0])
{
  
  

}