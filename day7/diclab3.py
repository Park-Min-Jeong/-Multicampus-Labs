dict_info = {
    "myinfo":{
        "number":5,
        "emailaddr":"minwjd1028@g.skku.edu",
        "movie":["인사이드 아웃"],
        "food":["카레", "마라탕"]
    }
}

my_info = dict_info["myinfo"]
print(f"좋아하는 숫자 : {my_info['number']}")
print(f"메일주소 : {my_info['emailaddr']}")
print(f"취미 : {my_info['movie']}")
print(f"좋아하는 음식 : {my_info['food']}")

print(f"좋아하는 숫자 : {my_info['number']}\n"
      f"메일주소 : {my_info['emailaddr']}\n"
      f"취미 : {my_info['movie']}\n"
      f"좋아하는 음식 : {my_info['food']}\n")

print(f"""좋아하는 숫자 : {my_info['number']}
메일주소 : {my_info['emailaddr']}
취미 : {my_info['movie']}
좋아하는 음식 : {my_info['food']}""")

# for key, value in dict_info["myinfo"].items():
#     print(f"{key} : {value}")
#     # 문제에서 주어진 출력 형식과는 다름