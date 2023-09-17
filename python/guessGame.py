#Guess the number game.

import random

secretNum = random.randint(1, 20)
print('I am thinking of a number between 1 and 20.')

#Ask the player to guess 6 times
for guessesTaken in range(1, 7):
    print('take a guess.')
    guess = int(input())

    if guess < secretNum:
        print('Your guess is too low.')
    elif guess > secretNum:
        print('Your guess is too high.')
    else:
        break # this condition is the correct guess!
if guess == secretNum:
    print('Good job! You guessed my number in ' + str(guessesTaken) + ' guesses!')
else:
        print('Nope. The number i was thinking of was ' + str(secretNum)) 
    