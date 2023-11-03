# Operational System
import os

# Methods
os.getcwd() # get the current dir

os.chdir('path') # change the dir

os.listdir('path') # list files and dirs in the path

os.mkdir('path') # make dir in the path

os.remove('path') # delete a file at the path

os.rmdir('path') # remove an empty dir at the path

os.rename('old', 'new') # rename a file or dir

os.path.exists('path') # check if a file or dir exists at the path

os.path.isfile('path') # check if the path points to a file

os.path.isdir('path') # check if the path points to a dir

# Properties
os.name # return the name of the os

os.curdir # return the current dir

os.pardir # return the parent dir

os.sep # the separator of the os ('/' for Linux/Unix, '\\' for Windows)

os.linesep # the string used to represent a line break in os

os.path.join('path', '*paths') # join paths based on the os