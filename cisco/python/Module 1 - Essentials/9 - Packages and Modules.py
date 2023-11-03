# Modules

## Built-in Modules
import math

radius = 5
area = math.pi * math.pow(radius, 2)
print(area)  # Output: 78.53981633974483

## Importing Functions from modules
from datetime import datetime
print(datetime.now())         # Get the current date and time

## Creating and importing Modules
# 1: create a file called my_module.py and defin a function, like say_hello(name):

# 2: import your module and use your function
import my_module
my_module.say_hello("Alice")

## Install third part modules or packages
# pip install pandas

# Packages (group of modules)

## Import packages
import pandas as pd
import numpy as np

# Import modules from packages
from my_package.my_module import my_function

# Dir: show all the methods in a module or packege
import math
  
for name in dir(math):
    print(name, end="\t")