import os, random
from enum import Enum


## Classes
class Status(Enum):
    Start = 1,
    Play = 2,
    Over = 3

class Player:
    def __init__(self, pice):
        self.pice = pice
        self.name = "Player"

class Computer:
    def __init__(self, pice):
        self.pice = pice
        self.name = "Computer"

class Game:
    def __init__(self, player, computer):
        self.player = Player(player)
        self.computer = Computer(computer)
        self.status = Status.Start
        self.playing = None
        self.winning = None
        self.board = []
        self.first_play = True

    def def_board(self):
        rows = 3
        cols = 3

        for i in range(rows):
            row = []
            for j in range(cols):
                current_valuel = i * cols + j + 1
                row.append(current_valuel)
            self.board.append(row)

    def show_board(self):
        print("\n")
        for i in range(len(self.board)):
            print(self.board[i])
        print("\n")

    def def_first_player(self):
        if self.first_play:
            _first_movement = random.randint(1, 2)

            if _first_movement == 1:
                self.playing = self.player
            else:
                self.playing = self.computer
        else:
            return

    def def_winning(self):
        self.ver_row()
        self.ver_col()
        self.ver_diagonal()
        if self.status == Status.Over:
            self.winning = self.playing

    def ver_row(self):
        for i in range(len(self.board)):
            if self.board[i][0] == self.board[i][1] == self.board[i][2]:
                self.status = Status.Over

    def ver_col(self):
        for j in range(len(self.board)):
            if self.board[0][j] == self.board[1][j] == self.board[2][j]:
                self.status = Status.Over
    
    def ver_diagonal(self):
        main_diagonal = [self.board[i][i] for i in range(len(self.board))]
        secondary_diagonal = [self.board[i][len(self.board) - 1 - i] for i in range(len(self.board))]

        if all(item == self.player for item in main_diagonal) or all(item == self.player for item in secondary_diagonal):
            self.status = Status.Over

    def play(self):
        row = col = None

        if self.playing == self.player:            
            _player_turn = self.player.name
        else:
            _player_turn = self.computer.name

        if self.first_play:
            self.first_play = False
        else:
            clear_screen()
            print(f"It's {_player_turn}'s turn.")  

        def _player_play():
            self.show_board() 
            row = int(input("Enter row (0, 1, 2): "))
            col = int(input("Enter column (0, 1, 2): "))
            return row, col

        def _computer_play():
            row = random.randint(0, 2)
            col = random.randint(0, 2)
            return row, col

        if (self.playing == self.player):
            row, col = _player_play()
        else:
            row, col = _computer_play()

        while row not in range(0, 3):            
            if (self.playing == self.player):
                clear_screen()
                print("Invalid move. Try again.")
                row, col = _player_play()
            else:
                row, col = _computer_play()

        self.board[row][col] = self.playing.pice  
        self.show_board() 
        self.def_winning()
        self.switch_turn()

    def switch_turn(self):
        if self.playing == self.player:
            self.playing = self.computer
        else:
            self.playing = self.player


## Functions
def clear_screen():
    os.system('cls' if os.name == 'nt' else 'clear')

def game_start():
    print("----------------------------------------")
    print("          Welcome to")
    print("          Tic-Tac-Toe-Py")
    print("----------------------------------------")
    _start = input("Press any key to continue...")
    clear_screen()

    return _start

def game_def_player():
    _player = input("Want to play with 'x' or 'y'? ")

    while _player != "x" and _player != "y":
        _player = input("You have to chone between 'x' or 'y': ")

    clear_screen()

    return _player

def game_new():
    _player = game_def_player()

    if (_player == "x"):
        new_game = Game("x", "y")
    else:
        new_game = Game("y", "x")

    new_game.def_first_player()
    new_game.def_board()

    print("You are the player ", new_game.player.pice)
    print("The first to play is: ", new_game.playing.pice)
    new_game.status = Status.Play

    return new_game


## Game
_start = game_start()

if _start != None:
    new_game = game_new()

while new_game.status == Status.Play:
    new_game.play()

if new_game.status == Status.Over:
    if new_game.winning == new_game.player:
        print("Congratulations! You win!")
    elif new_game.winning == new_game.computer:
        print("Sorry, the computer wins.")
    else:
        print("It's a tie!")