def print_triangle_withdeco(num, deco="%"):
    if num not in range(1, 11):
        num = 5
    for i in range(1, num+1):
        print(f"{deco*i:>{num}}")


print(f"{'-' * 3}print_triangle_withdeco(3){'-' * 3}")
print_triangle_withdeco(3)

print(f"{'-' * 3}print_triangle_withdeco(13, '*'){'-' * 3}")
print_triangle_withdeco(13, '*')