# ???
# For example, If the given integer number is 7536, the output shall be “6 3 5 7“, with a space separating the digits.
number_giv = 7536
reverse = number_giv[::-1]
print(reverse + " ")

# Write a Python code to remove characters from a string from 0 to n and return a new string.
def remove_chars(word, n):
    print('Original string:', word)
    x = word[n:]
    return x

print("Removing characters from a string")
print(remove_chars("pynative", 4))
print(remove_chars("pynative", 2))

# Exercise 8: Print the following pattern
# 1 
# 2 2 
# 3 3 3 
# 4 4 4 4 
# 5 5 5 5 5
for nun in range(10):
    for  r in range(nun):
            print(nun, end = ' ')
    print("\n") #Using functions in this code is very difficult.

        
# Exercise 14: Print a downward half-pyramid pattern of 

# Exercise: 19: Print Alternate Prime Numbers till 20
# A Prime Number is a number that can only be divided by itself and 1 without remainders (e.g., 2, 3, 5, 7, 11).
# For example:
# All prime numbers from 1 to 20: 2, 3, 5, 7, 11, 13, 17, 19
# Alternate prime numbers from 1 to 20:
# 2, 5, 11, 17