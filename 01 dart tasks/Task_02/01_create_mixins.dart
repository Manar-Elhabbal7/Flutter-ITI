//Author : Manar Elhabbal

mixin Fly {
  double speed = 15.0; 
  String wingsColor = "white";

  void canFly() {
    print("Flying at a speed of $speed m/s with $wingsColor wings...");
  }
}

mixin Swim {
  double speed = 5.0; 
  String waterType = "freshwater";

  void canSwim() {
    print("Swimming at a speed of $speed m/s in $waterType...");
  }
}

class Animal {
  final String name;
  Animal(this.name);

  void printVoice(String voice) {
    print("$name makes sound: $voice");
  }
}

class Duck extends Animal with Fly, Swim {
  final String type;
  Duck(String name, this.type) : super(name);

  void voice() {
    super.printVoice("Quack Quack");
  }
}

class Fish extends Animal with Swim {
  final String type;
  Fish(String name, this.type) : super(name);

  void voice() {
    super.printVoice("Glub Glub");
  }
}

class Bird extends Animal with Fly {
  final String type;
  Bird(String name, this.type) : super(name);

  void voice() {
    super.printVoice("Chirp Chirp");
  }
}

void main() {
  Duck d = Duck("Donald", "Mallard");
  d.voice();
  d.canFly();
  d.canSwim();

  Fish f = Fish("Nemo", "Clownfish");
  f.voice();
  f.canSwim();

  Bird b = Bird("Tweety", "Canary");
  b.voice();
  b.canFly();
}                                                                                                                
                                                                                                                     
/*Create mixins:                                                                                                 
    Fly                                                                                                              
    Swim
    Inside mixins:
    * variables
    * methods
    Create classes:
    * Duck
    * Fish
    * Bird
    Requirements:
    * Use with keyword
    * Use extends + with together
    * Create constructors
    * Add functions inside mixins
*/