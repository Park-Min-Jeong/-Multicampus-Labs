def sum_even(*nums):
    if len(nums) == 0:
        return -1

    result = 0
    for num in nums:
        if num % 2 == 0:
            result = result + num
    return result


print(sum_even(1, 2, 3, 4, 5))
print(sum_even(11, 22, 33, 44, 55))
print(sum_even(1, 3, 5))
print(sum_even())