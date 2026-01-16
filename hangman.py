import random
words = random.choice(['apple', 'orange', 'lemon', 'grapes'])

guesses = ''
chances = 5
print("Welcome to the Hangman Game.")

while chances > 0:
    guess = input("Guess a letter of a word: ").lower()
    if guess in words:
        print("Good!, atleast you picked a letter from the word.")
    else:
        chances -= 1
        print(f"wrong! you have {chances} chances left")
        print('Try guessing it correct, you might win!')
    guesses += guess

    for letter in words:
        if letter in guesses:
            print(letter, end=' ')
        else:
            print('__', end=' ')

    print("\n")  
    if all(letter in guesses for letter in words):
        print("You win! Congrats, you had all the guesses correct")
        break
else:
    print(f"Game over! the word was {words}.")         
