有的时候，两个类可能会有共用的属性和方法，比如。这个时候就可以通过#quote[继承]，将一个类的属性和方法都复制到另一个类之中。比如：

#rect[
  ```py
  class Person:
    def __init__(self, name):
      self.name = name

    def introduce(self):
      print(f"Hi, I'm {self.name}!")

  class Student(Person): pass
  class Teacher(Person): pass
  ```
]

此时Student和Teacher都继承了Person类，都拥有Person的`__init__`方法和属性`name`。其中Person被称为*父类*，Student和Teacher被称为*子类*。

子类的属性和方法都可以覆盖父类的方法，比如：

#rect[
  ```py
  class Student(Person):
    def introduce(self):
      print(f"Hi, I'm Student {self.name}!")
  ```
]

如果在覆盖了父类的方法后，还想要在子类的方法中调用父类的方法，可以使用super：

#rect[
  ```py
  class Student(Person):
    def introduce(self):
      super().introduce()
      print(f"I'm a student!")
  ```
]
