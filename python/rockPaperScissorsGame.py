import random, sys

print('ROCK, PAPER, SCISSORS')

#These variables keep track of wins, losses, and ties
wins = 0
losses = 0
ties = 0

while True: #the main game loop
    print('%s Wins, %s Losses, %s Ties' %(wins, losses, ties))
    while True: #the player input loop
        print('Enter your move: (r)ock (p)aper (s)cissors and (q)uit')
        playerMove = input()
        if playerMove == 'q':
            sys.exit() # quit the program
        if playerMove == 'r' or playerMove == 'p' or playerMove == 's':
            break # break out of the player input loop
        print('Type one of r, p, s, or q.')

    #display what the player chosed:
    if playerMove == 'r':
        print('ROCK versus...')
    elif playerMove == 'p':
        print('PAPER versus...')
    elif playerMove == 's':
        print('SCISSORS versus...') 

    #display what the computer chosed:
    randonNum = random.randint(1, 3)
    if randonNum == 1:
        computerMove = 'r'
        print('ROCK')
    elif randonNum == 2:
        computerMove = 'p'
        print('PAPER')
    elif randonNum == 3:
        computerMove = 's'
        print('SCISSORS')

    #Display and record the win/loss/tie:
    if playerMove == computerMove:
        print('It is a tie!')
        ties = ties + 1
    elif playerMove =='r' and computerMove == 's':
        print('You Win!')
        wins += 1
    elif playerMove == 'p' and computerMove == 'r':
        print('You Win')
        wins += 1
    elif playerMove == "s" and computerMove == 'p':
        print('You Win')
        wins += 1
    elif playerMove == 'r' and computerMove == 'p':
        print('You Lose')
        losses += 1
    elif playerMove == 'p' and computerMove == 's':
        print('You Lose')
        losses += 1
    elif playerMove == 's' and computerMove == 'r':
        print('You Lose')
        losses += 1