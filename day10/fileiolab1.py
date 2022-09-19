texts = [
    "Python",
    "HTML",
    "CSS",
    "JavaScript",
    "R"
]

fname = "study.txt"
with open(fname, "a+") as f:
    for text in texts:
        f.write(text+"\n")
    print("저장이 완료되었습니다.")

# Other Case 1
# f = open("study.txt", "a+")
# try:
#     for text in texts:
#         f.write(text+"\n")
# finally:
#     f.close()
#     print("저장이 완료되었습니다.")

# Other Case 2
# f = open("study.txt", "a+")
# for text in texts:
#     f.write(text+"\n")
# f.close()
#  print("저장이 완료되었습니다.")
