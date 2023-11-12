void main() {
  int number = 42;

  if (number > 0) {
    print('Positive');
  } else if (number < 0) {
    print('Negative');
  } else {
    print('Zero');
  }

  for (int i = 0; i < 3; i++) {
    print('Iteration $i');
  }
}
