#
# Palindrome tester
#
# This code tests if a string qualifies as a palindrome.
def isPalindrome(s):
    return s == s[::-1]
 
s = "racecar"
ans = isPalindrome(s)
 
if ans:
    print("Yes")
else:
    print("No")#
