def mycompredict(**args):
    return {"my"+k:v for k, v in args.items()}


print(mycompredict(a=1, b=2, c=3))
print(mycompredict(a1="A", b2="B", c3="C"))
print(mycompredict())
