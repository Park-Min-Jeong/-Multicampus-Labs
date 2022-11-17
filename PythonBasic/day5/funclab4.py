def print_triangle1(num):
    if n >= 1 and n <= 10:
        for i in range(1, num+1):
            print("*"*i)
    # if num < 1 or num > 10:
    #     return
    # for i in range(1, num+1, 1):
    #     print("*"*i)


for n in [-1, 2, 5, 11]:
    print(f"num : {n}")
    print_triangle1(n)