class Person {
  String name;
  int age;

  // Constructor
  Person(this.name, this.age);

  void introduceYourself() {
    print('Hello, I am $name and I am $age years old.');
  }
}

void main() {
  Person person = Person('John', 30);
  person.introduceYourself();
}
