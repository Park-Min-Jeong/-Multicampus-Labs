# def expr(number1, number2, operator):
#     result = None
#     if operator in ["+", "-", "*", "/"]:
#         result = eval(f"{number1} {operator} {number2}")
#     return result

def expr(number1, number2, operator):
    result = None
    if operator == "+":
        result = number1 + number2
        # return number1 + number2
    elif operator == "-":
        result = number1 - number2
        # return number1 - number2
    elif operator == "*":
        result = number1 * number2
        # return number1 * number2
    elif operator == "/":
        result = number1 / number2
        # return number1 / number2
    return result # return 최소화


n1 = 10
n2 = 20
operators = ["+", "-", "*", "/", "@"]

for oper in operators:
    result = expr(n1, n2, oper)
    if result == None:
        print("수행 불가")
    else:
        print(f"연산결과 : {result}")