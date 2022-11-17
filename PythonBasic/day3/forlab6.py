even_num = 0
odd_num = 0

for i in range(1, 101):
    if i % 2 == 0:
        even_num = even_num + i
    else:
        odd_num = odd_num + i

print(f"1부터 100까지의 숫자 중에서\n짝수의 합은 {even_num} 이고\n홀수의 합은 {odd_num} 이다.")