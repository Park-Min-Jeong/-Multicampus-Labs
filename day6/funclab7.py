def print_gugudan(num):
    # if type(num) != int:
    #     return
    # if num < 1 or num > 9:
    #     return
    # for i in range(1, 10):
    #     print(f"{num} * {i} = {num*i}")
    if type(num) == int and num >= 1 and num <= 9:
        for i in range(1, 10):
            print(f"{num} * {i} = {num*i}")


for var in [5, 11, "A"]:
    print(f"{'-'*3}print_gugudan({var}){'-'*3}")
    print_gugudan(var)