import random

s = set()

while len(s) < 6:
    s.add(random.randint(1, 45))

# s.update(random.sample(range(1, 46), 6))

print("행운의 로또 번호 : ", end="")
print(*s, sep=", ")