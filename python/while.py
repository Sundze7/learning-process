#example 1
#spam = 0
#while spam < 5:
 #   print ('hello world')
  #  spam = spam + 1

#example 2
#name = ''
#while name != 'your name':
 #   print('please type your name.')
  #  name = input()
#print('thank you')

#example 3
#while True:
 #   print('please type your name')
  # if name == 'your name':
    #    break
   # print ('Thank you')

#example 4
while True:
    print('Who are you?')
    name = input()
    if name != 'Sundze':
        continue
    print('Hello Sundze. What is the password?(it is a fish)')
    password = input()
    if password == 'swordfish':
        break
print('Access Granted')
