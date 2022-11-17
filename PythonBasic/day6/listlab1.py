import random

listnum = list()  # 2

for _ in range(10):  # 3
    listnum.append(random.randint(1, 50))

print(listnum) # 4

for i in range(len(listnum)):  # 5
    if listnum[i] < 10:
        listnum[i] = 100

print(listnum)  # 6

print(listnum[0])  # 7

print(listnum[-1])  # 8

print(listnum[2:7])  # 9

print(listnum[::-1])  # 10

print(listnum[:])  # 11

del listnum[4]  # 12

print(listnum[:])  # 13

del listnum[1:3]  # 14

print(listnum[:])  #15