// Functions in dart

// Task 1 : Function to add two numbers

int addTwo(int a, int b) {
  return a + b;
}

// Task 2 : Function to subtract two numbers
double subtractTwo(double a, double b) {
  return a - b;
}

// Task 3 : Function to multiply two numbers
int multiplyTwo(int a, int b) {
  return a * b;
}

// Task 4 : Function to divide two numbers
double divideTwo(double a, double b) {
  if (b != 0){
  return a / b;
} else {
  print("eror: cannot divide by zero");
  return 0;
}
}

// Task 5 : Function to get length of a string

int lengthOfString(String str) {
  return str.length;
}

// Task 6 : Function to get the first element of a list

dynamic firstElement(List list) {
  if (list.isNotEmpty){
  return list[0];
  }else {
    print("error: list is empty");
    return null;
  }
}

void main(){
  print("Task 1: ${addTwo(10, 20)}");
  print("Task 2: ${subtractTwo(20.5, 10.5)}");
  print("Task 3: ${multiplyTwo(10, 20)}");
  print("Task 4: ${divideTwo(20, 10)}");
  print("Task 5: ${lengthOfString("Hello Hazel")}");
  print("Task 6: ${firstElement([1, 2, 3, 4, 5])}");

}