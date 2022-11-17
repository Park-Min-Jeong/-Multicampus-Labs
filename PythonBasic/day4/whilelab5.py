while True:
    word = input("문자열을 입력하시오 : ")
    wordlength = len(word)

    if wordlength == 0:
        break
    elif wordlength < 5:
        result = "*" + word + "*"
    elif wordlength > 8:
        result = "$" + word + "$"
    else:
        continue

    print("유효한 입력 결과 : {}".format(result))