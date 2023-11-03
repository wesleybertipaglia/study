# User interactions
import os
something = input("Tell me something: ")
os.system('cls' if os.name == 'nt' else 'clear')
print("You say: ", something)