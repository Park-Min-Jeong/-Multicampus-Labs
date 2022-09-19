import random

num = random.randint(5, 10)

i = 1
while True:
    if i == num:
        break
    print("{} -> {}".format(i, i**2))
    i = i + 1