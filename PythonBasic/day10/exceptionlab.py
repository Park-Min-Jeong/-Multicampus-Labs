while True:
    try:
        num = int(input("숫자를 입력하세요 : "))
    except ValueError:
        print("숫자만 입력해주세요~~")
    else:
        # result = 0
        # for i in range(1, num + 1):
        #     result = result + i
        print(f"1부터 {num}까지의 합은 {sum(range(1, num+1))}입니다.")
        break
