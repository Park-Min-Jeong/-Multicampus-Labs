color_dict = {
    "red":"#ff0000",
    "blue":"0000ff",
    "green":"008000",
    "yellow":"ffff00",
    "orange":"ffa500",
    "black":"000000",
    "white":"ffffff",
    "violet":"ee82ee",
    "pink":"ffc0cb",
    "lime":"00ff00"
}

color_en = input("칼라명을 영문으로 입력하세요 : ")

color_code = color_dict.get(color_en)
if color_code:
    print(f"{color_en} 칼라의 RGB 값은 {color_code} 입니다.")
else:
    print(f"{color_en} 칼라의 RGB 값을 찾을 수 없습니다.")