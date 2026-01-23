

# Given two integer numbers, write a Python program to return their product only if the product 
# is equal to or lower than 1000. Otherwise, return their sum.
def sum_of_num(number1, number2):
  if number1 * number2 < 1000:
    return number1 * number2 
  if number1 * number2 == 1000:
    return number1 * number2
  else:
    return number1 + number2

print(sum_of_num(40, 30))

# Write Python code to iterate through the first 10 numbers 
# and, in each iteration, print the sum of the current and previous number.
sum_ = 0
prev_num = 0
for num in range(10):
    # list(num)
    sum_ += num  
    print(f'Current Number {num} Previous Number {prev_num} Sum:  {sum_}')
    prev_num = num

# Write a Python code to accept a string from the user and display characters present at an even index number.
# For example, str = "PYnative". so your code should display ‘P’, ‘n’, ‘t’, ‘v’.
def wodry(word):
    print(f'Orginal String is {word}')
    print(f'Printing only even index chars:')
    for i in range(0, len(word), 2):
        print(word[i])
print(wodry('Practically'))

# Write a Python code to remove characters from a string from 0 to n and return a new string.
def remove_chars(word, n):
    print('Original string:', word)
    x = word[n:]
    return x

print("Removing characters from a string")
print(remove_chars("pynative", 4))
print(remove_chars("pynative", 2))

# Write a code to return True if the list’s first and last numbers are the same. 
# If the numbers are different, return False.
def numbers(numbers_x, numbers_y):
    if numbers_x[0] == numbers_x[4]:
        return True 
    else:
        return False 
    if numbers_y[0] == numbers_y[4]:
        return True 
    else:
        return False 
print(numbers([10, 20, 30, 40, 10], [75, 65, 35, 75, 30]))   

# Write a Python code to display numbers from a list divisible by 5
def nume(number):
    for int_ in number: 
        if int_ % 5 == 0:
            print(int_)

print(nume([10, 20, 33, 46, 55]))

# Write a Python code to find how often the substring “Emma” appears in the given string.
def Emma(str_x):
    count_ = str_x.count('Emma')
    return f"Emma appeared {count_} times."
print(Emma("Emma is good developer. Emma is a writer"))


# Exercise 8: Print the following pattern
# 1 
# 2 2 
# 3 3 3 
# 4 4 4 4 
# 5 5 5 5 5
def print_number(n):
    for r in range(n):
        print(n, end=' ')

def print_pattern(limit):
    for nun in range(limit):
        print_number(nun)
        print("\n")  # move to next line

print_pattern(10)


# Write a Python code to check if the given number is a palindrome. 
# A palindrome number reads the same forwards and backward. For example, 545 is a palindrome number.
def palindrome_(numberr):
    str_num = str(numberr)
    rev_num = str_num[::-1]
    if str_num == rev_num:
        return f"{numberr} is a palindrome number"
    else:
        return f"{numberr} is not a palindrome number"
print(palindrome_(545))

# Given two lists of numbers, write Python code to create a new list
#  containing odd numbers from the first list and even numbers from the second list.
odd_numberss = []

def odd_numbers(list1, list2):
    for int_1 in list1:
        if int_1 % 2 != 0:
            odd_numberss.append(int_1)
            
    for int_2 in list2:
        if int_2 % 2 == 0:
            odd_numberss.append(int_2)

odd_numbers([10, 20, 25, 30, 35], [40, 45, 60, 75, 90])
print(odd_numberss)

# The multiplication table from 1 to 10 is a table that shows the products of numbers from 1 to 10.
# Write a code to generates a complete multiplication table for numbers 1 through 10.
# def
for i in range(1, 10):
    for j in range(1, 10):
        print(f"{i*j} ", end= '')
    print()


def exponent(base, exp):
    num = exp
    result = 1
    while num > 0:
        result *= base
        num -= 1
    print(base, "raises to the power of", exp, "is: ", result)

exponent(5, 4)


# A palindrome number is a number that remains the same when its digits are reversed. 
# In simpler terms, it reads the same forwards and backward. For example 121, 5005.

def is_palindrome_while_loop(number):
  
    original_number = number
    reversed_number = 0

    while number > 0:
        remainder = number % 10
        reversed_number = (reversed_number * 10) + remainder
        number //= 10

    return original_number == reversed_number

print(is_palindrome_while_loop(121))  
print(is_palindrome_while_loop(123))


# Exercise 17: Generate Fibonacci series up to 15 terms
# Have you ever wondered about the Fibonacci Sequence? It’s a series of numbers
# in which the next number is found by adding up the two numbers before it. The first two numbers are 0 and 1.
# For example, 0, 1, 1, 2, 3, 5, 8, 13, 21. The next number in this series is 13 + 21 = 34.
num1 = 0
num2 = 1
for p in range(15):
    print(num1, end=" ")
    result = num1 + num2
    num1 = num2
    num2 = result
print("\n")

# A leap year is a year in the Gregorian calendar that contains an extra day, 
# making it 366 days long instead of the usual 365. This extra day, February 29th, is 
# added to keep the calendar synchronized with the Earth’s revolution around the Sun.

# Rules for leap years: a year is a leap year if it’s divisible by 4, unless it’s also divisible by 100 but not by 400.

# Write a code find if a given year is a leap year.
def checking_leap_year(days_of_year):
    if days_of_year % 4 == 0:
        return f"{days_of_year} is a leap year."
    elif days_of_year % 100 == 0:
        return f"{days_of_year}, is a leap year."
    elif days_of_year % 400 == 0:
        return f"{days_of_year} is NOT a leap year."
    else:
        return "Try inputing a year."

print(checking_leap_year(356))
print(checking_leap_year(2020))


# Print Reverse Number Pattern
# Expected Output:

# 1 1 1 1 1 
# 2 2 2 2 
# 3 3 3 
# 4 4 
# 5 
def pattern(rows):  
  for i in range(1, rows + 1):
    for j in range(rows - i + 1):
      print(i, end=" ")
    print()

pattern(5)

# Check if a user-entered string contains any digits using a for loop
# Expected Output:

# Enter a string: Pynative123Python
# The string contains at least one digit.

# Enter a string: PYnative
# The string does not contain any digits.

def contains_digits(text):
  
  for char in text:
    if '0' <= char <= '9':
      return True  
  return False  

user_string = input("Enter a string: ")

if contains_digits(user_string):
  print("The string contains at least one digit.")
else:
  print("The string does not contain any digits.")



# Exercise 22: Capitalize the first letter of each word in a string
# Expected Output:

# str1 = "pynative.com is for python lovers"
# # Output Pynative.com Is For Python Lovers

def capitalize_words(texting):
  
  words = texting.split() 
  capitalized_words = [word.capitalize() for word in words]  
  return " ".join(capitalized_words) 

str1 = "pynative.com is for python lovers"

capitalized_string = capitalize_words(str1)
print("Capitalized string:", capitalized_string)


# Exercise 23: Create a simple countdown timer using a while loop.
# Write a code to create a simple countdown timer of 5 seconds using a while loop.

# Once the timer finishes (when the remaining time reaches zero), print a “Time’s up!” message.

# Expected Output:

# Time remaining: 5 seconds
# Time remaining: 4 seconds
# Time remaining: 3 seconds
# Time remaining: 2 seconds
# Time remaining: 1 seconds
# Time's up!

import time

def countdown_timer(seconds):
  
  while seconds > 0:
    print(f"Time remaining: {seconds} seconds")
    time.sleep(1) 
    seconds -= 1

  print("Time's up!")

duration = 5
countdown_timer(duration)
