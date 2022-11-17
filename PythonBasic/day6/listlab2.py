import random

numbers = list()

while True:
    if len(numbers) == 6:
        break
    num = random.randint(1, 45)
    if num not in numbers:
        numbers.append(num)

print(f"행운의 로또번호 : {numbers}")