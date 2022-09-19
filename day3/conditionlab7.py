num = int(input("1부터 10사이의 숫자를 하나 입력하세요 : "))

if num < 1 or num > 10:
    print("1부터 10사이의 값이 아닙니다.")
elif num % 2 == 0:
    print(f"{num} : 짝수")
else:
    print(f"{num} : 홀수")