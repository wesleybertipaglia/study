# The Caesar Cipher Encrypter
import os

def clear_screen():
    os.system('cls' if os.name == 'nt' else 'clear')

def encripter():
    clear_screen()
    print('[' + 'Caesar Ciper Encripter'.center(40) + ']\n')

    message = input("Enter your message: ")
    cipher = ''

    for char in message:
        if not char.isalpha():
            continue
        char = char.upper()
        code = ord(char) + 1
        if code > ord('Z'):
            code = ord('A')
        cipher += chr(code)

    print('Encripted: ' + cipher)    
    decript = int(input('\nDo you want to decript the message? yes [0] no [1]: '))

    while decript not in range(1):
        print('Invalid value!\n')
        decript = int(input('Chose a valid function encripter [0] decripter [1]: '))

    if decript == 0:
        decripter(cipher)
    else:
        decripter()
    return cipher

def decripter(encripted):
    clear_screen()
    print('[' + 'Caesar Ciper Encripter'.center(40) + ']\n')

    if encripted == None:
        encripted = input("Enter your encripted message: ")
    decripted = ''

    for char in encripted:
        if not char.isalpha():
            continue
        
        code = ord(char)

        if code == ord('A'):
            code = ord('Z')
        else:
            code -= 1

        decripted += chr(code)
        decripted = decripted.capitalize()
    
    print("Your encripted message: " + encripted)
    print("Decripted: " + decripted)
    return decripted

def main():
    clear_screen()
    print('[' + 'Caesar Ciper Encripter'.center(40) + ']\n')
    function = int(input('Chose a function encripter [0] decripter [1]: '))
    
    while function not in range(1):
        print('Invalid value')
        function = int(input('Chose a valid function encripter [0] decripter [1]'))

    if function == 0:
        encripter()
    else:
        decripter()

main()