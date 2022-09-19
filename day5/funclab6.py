import random

# def differtwovalue(num1, num2):
#     return abs(num1 - num2)

def differtwovalue(num1, num2):
    result = 0
    if num1 > num2:
        result = num1 - num2
    elif num1 < num2:
        result = num2 - num1

    return result


for _ in range(5):
    n1 = random.randint(1, 30)
    n2 = random.randint(1, 30)
    print(f"{n1} 와 {n2} 의 차는 {differtwovalue(n1, n2)} 입니다.")