import random

while True:
    pairNum1 = random.randint(1, 6)
    pairNum2 = random.randint(1, 6)

    if pairNum1 == pairNum2:
        print("게임 끝")
        break
    elif pairNum1 > pairNum2:
        print("{}이 {} 보다 크다".format(pairNum1, pairNum2))
    else:
        print("{}이 {} 보다 작다.".format(pairNum1, pairNum2))