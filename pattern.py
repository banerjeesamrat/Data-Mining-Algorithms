string='September'
length=len(string)
print(length)
nov=0
for char in string:
    if char in 'aeiouAEIOU':
        nov=nov+1
print(nov)
strlength=str(length)
print(strlength)
strnov=str(nov)
print(strnov)
print("Final Answer->"+strlength+strnov)
