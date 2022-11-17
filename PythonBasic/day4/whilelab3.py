import random

cnt = 0
while True:
    num = random.randint(0, 30)
    if num == 0 or num >= 27:
        print("수행횟수는 {} 번입니다".format(cnt))
        break
    print("{}({})".format(chr(num+64), num))
    cnt = cnt + 1