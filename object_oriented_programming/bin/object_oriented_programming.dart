void main() {
  var dicodingCat = Animal('Gray', 2, 4.2);

  var kucing = Cat('Poop', 1, 5, 'merah');

  kucing.eat();
  kucing.sleep();
  kucing.walk();
}

class Animal {
  String name = '';
  int age = 0;
  double weight = 0;

  Animal(this.name, this.age, this.weight);

  void eat() {
    print('$name is eating.');
    weight = weight + 0.2;
  }

  void sleep() {
    print('$name is sleeping.');
  }
}

class Cat extends Animal {
  late String furColor;

  Cat(String name, int age, double weight, String furColor)
      : this.furColor = furColor,
        super(name, age, weight);

  void walk() {
    print('$name is walking');
  }
}

class Fish extends Animal {
  late String skinColor;
  Fish(String name, int age, double weight, String skinColor)
      : this.skinColor = skinColor,
        super(name, age, weight);

  void swimming() {
    print('$name is swimming');
  }
}
