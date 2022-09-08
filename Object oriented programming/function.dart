void main() {
  //return type func_name (arguments){}
  int function(int x, int y) {
    int ans = x + y;
    //must return value - int data type
    return ans;
  }

  //call the function and create the call variable
  int res = function(1, 3);
  print(res);

  //void must have not a return value
  void func(int m, int n) {
    print(m + n);
  }

  //function without return type
  fun(int a, int b) {
    return a + b;
  }
}
