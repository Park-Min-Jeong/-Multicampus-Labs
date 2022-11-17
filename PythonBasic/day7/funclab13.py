def mydict(**args):  # 딕셔너리로 패킹해서 전달
    my_dict = dict()

    for k, v in args.items():
        k = "my" + k  # str(k)
        my_dict[k] = v

    return my_dict


print(mydict(a=1, b=2, c=3))
print(mydict(a1="A", b2="B", c3="C"))
print(mydict())
