# 기존 코드: 가변 아규먼트 1개, 키워드 아규먼트 2개...
# def myprint(*content, deco="**", sep=","):
#     if len(content) == 0:
#         print("Hello Python")
#     else:
#         print(deco, end="")
#         print(*content, sep=sep, end=deco+"\n")

# 가변 아규먼트 1개, 가변 키워드 아규먼트 1개
def myprint(*content, **kwargs):
    if len(content) == 0:
        print("Hello Python")
        return

    deco = kwargs.get("deco", "**")
    sep = kwargs.get("sep", ",")

    print(deco, end="")
    print(*content, sep=sep, end=deco+"\n")


myprint(10, 20, 30, deco="@", sep="-")
myprint("python", "javascript", "R", deco="$")
myprint("가", "나", "다")
myprint(100)
myprint(True, 111, False, "abc", deco="&", sep="")
myprint()