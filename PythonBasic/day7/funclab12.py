def number_all_sum(*nums):
    result = 0
    for num in nums:
        if type(num) == int:
            result = result + num

    if result == 0:
        result = None

    return result


print(number_all_sum(1, 2, 3, 4, 5))
print(number_all_sum(1, 2, "a", 3, 4, "b", 5))
print(number_all_sum(10, 20, True))
print(number_all_sum())
print(number_all_sum("a", True, "가"))