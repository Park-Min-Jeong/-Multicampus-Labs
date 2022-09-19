while True:
    num = int(input("1~12 사이의 값을 입력하세요 : "))

    if num < 1 or num > 12:
        print("1~12 사이의 값을 입력하세요!")
        break
    elif num == 12 or num <= 2:  # elif num in [12, 1, 2]
        season = "겨울"
    elif num <= 5:  # elif num in [3, 4, 5]
        season = "봄"
    elif num <= 8:  # elif num in [6, 7, 8]
        season = "여름"
    else:
        season = "가을"

    print("{} 월은 {}".format(num, season))