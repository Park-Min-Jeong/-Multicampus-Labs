def in_python(string):
    return "PYTHON" in string


strings = ["나는 PYTHON을 학습합니다.",
           "나는 python을 학습합니다.",
           "PYTHON1234"]

for s in strings:
    PYTHON = in_python(s)
    if PYTHON:
        print("PYTHON이 존재합니다")
    else:
        print("PYTHON이 존재하지 않습니다")