// https://dart.cn/guides/language/language-tour#type-test-operators
class Person {
  String firstName = '';

  Person(this.firstName);
}

void main(List<String> args) {
  var employee = Person('Bob');

  (employee as Person).firstName = 'Bob';

  if (employee is Person) {
    // Type check
    employee.firstName = 'Bob';
  }
}
