try:
    fname = "yesterday.txt"
    with open(fname, "r") as f:
        n = f.read().lower().count("yesterday")
    # f = open("yesterday.txt", "r")
    # n = f.read().lower().count("yesterday")
    # f.close()
except FileNotFoundError:
    print("파일을 읽을 수 없어요.")
else:
    print(f"Number of a Word 'Yesterday' {n}")
finally:
    print("수행완료!!")