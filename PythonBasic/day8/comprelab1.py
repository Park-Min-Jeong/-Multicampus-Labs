def create_list(*args, type=1):
    if len(args) == 0:
        args = [x for x in range(1, 31)]

    if type == 1:
        return_list = [x for x in args]
    elif type == 2:
        return_list = [x for x in args if x % 2 == 0]
    elif type == 3:
        return_list = [x for x in args if x % 2 == 1]
    elif type == 4:
        return_list = [x for x in args if x > 10]

    return return_list


print(create_list())
print(create_list(type=2))
print(create_list(type=3))
print(create_list(type=4))
print(create_list(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, type=1))
print(create_list(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, type=2))
print(create_list(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, type=3))
print(create_list(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, type=4))