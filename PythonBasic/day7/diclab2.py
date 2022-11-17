weather_dict = {
    "월":(19, 27),
    "화":(19, 27),
    "수":(16, 28),
    "목":(18, 29),
    "금":(17, 31),
    "토":(19, 29),
    "일":(19, 28)
}

day = input("요일명을 한글로 입력하세요 : ")

min_temp, max_temp = weather_dict.get(day, (None, None))

if min_temp:
    print(f"{day}요일의 최저온도는 {min_temp} 이고 최고온도는 {max_temp} 입니다")
else:
    print(f"{day}요일의 정보를 찾을 수 없습니다")