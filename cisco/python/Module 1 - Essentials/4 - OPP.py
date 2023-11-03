# OPP

## Class
class Animal:
    def __init__(self, name, age):
        self._name = name
        self._age = age

    def get_name(self):
        return self._name
    
    def get_age(self):
        return self._age
        
## Inheritance
class Dog(Animal):
    pass
    
    def bark(self):
        print(f"{self._name} says Woof!")

## Objects
dog1 = Dog("Buddy", 3)
dog2 = Dog("Max", 5)

## Interacting with the objects
dog1.bark()  # Output: Buddy says Woof!
dog2.bark()  # Output: Max says Woof!

print(f"{dog1.get_name()} is {dog1.get_age()} years old.")  # Output: Buddy is 3 years old.
print(f"{dog2.get_name()} is {dog2.get_age()} years old.")  # Output: Max is 5 years old.

