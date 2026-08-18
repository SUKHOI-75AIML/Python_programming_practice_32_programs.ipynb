import random

rank= ['2', '3', '4', '5', '6', '7', '8', '9', '10', 'J', 'Q', 'K', 'A']
symb= ['Hearts', 'Diamonds', 'Clubs', 'Spades']
deck= [r+ ' of ' +s for s in symb for r in rank]
random.shuffle(deck)

while True:
    text= input("Enter number of players:")
    if text.isdigit() and int(text)>= 2:
        n= int(text)
        break
    print("Invalid input.")
divided_cards= len(deck)//n
hands= []
for p in range(n):
    start= p*divided_cards
    hands.append(deck[start: start+ divided_cards])
scores =[0]*n

for r in range(1, divided_cards+ 1):
    print("\n___Round ", r, "___")
    for p in range(n):
        card= random.choice(hands[p])
        hands[p].remove(card)
        print("Player", p+ 1, "played:", card)
    while True:
        choice = input("Enter the winning player number:")
        if choice.isdigit() and 1<= int(choice) <= n:
            scores[int(choice)-1]+=1
            break
        print("Invalid input.")

print("\n___RESULTS___")
for p in range(n):
    print("Player", p+ 1, "has won", scores[p], "rounds")

m= max(scores)
win = [p+ 1 for p in range(n) if scores[p]== m]
if len(win)== 1:
    print("Overall winner is Player",win[0])
else:
    print("It's a tie between players:", win)