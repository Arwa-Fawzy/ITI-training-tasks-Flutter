void main() {
  //int
  int x = 5;

  //double
  double y = 9;

  //int or double
  num m = 5;

  //the first letter in string data type must be capital letter
  String myName = "Arwa";

  //string concetentation
  print("my name is " + myName);

  //skip charachter - to write $ inside the text
  print('my name is $myName $x \$');

  //boolean
  bool isTrue = true;

  //first letter in list must be capital
  List<double> degrees = [50, 60, 70];

  //to add element
  degrees.add(18);

  //print the first element
  degrees.first;
  print(degrees[0]);

  //print the last element by index=size-1
  print(degrees[3]);

  //to get the length of the list
  print("the length is ${degrees.length}");
  //print("the length is {$degrees.length}");
  //output>>the length is {[50, 60, 70, 18].length}

  //for syntax
  for (int i = 0; i < 3; ++i /* or i+=1 */) {
    print(i);
  }
  for (int i = 0; i < degrees.length; ++i /* or i+=1 */) {
    print(degrees[i]);
  }

  //ctrl+forward slash to make automatic comment and uncomment

  //while syntax , identify the variable first
  int j = 0;
  while (j < 3) {
    print(j);
    ++j;
  }

  //if condition
  if (x > y) {
    print("yes");
  } else if (x == y) {
    print("Equal");
  } else {
    print("No");
  }
}
