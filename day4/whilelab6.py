while True:
    num = int(input("숫자를 입력하시오 : "))

    if num == 0:
        print("종료")
        break

    if num < -10 or num > 10:
        continue
    elif num > 0:
        print("입력값 : {}".format(num))
    else:
        num = num * (-1)
        print("입력값(부호변경) : {}".format(num))

    result = 1
    for i in range(1, num+1):
        result = result * i
    print(result)