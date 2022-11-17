import random

def get_min_max(numbers):
    return min(numbers), max(numbers)


list_v = list()
for _ in range(10):
    list_v.append(random.randint(1, 30))

min_v, max_v = get_min_max(list_v)

print(f"생성된 리스트 : {list_v}")
print(f"최솟값은 {min_v}이고 최댓값은 {max_v}입니다.")