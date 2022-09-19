def myemail_info(email):
    if "@" not in email:
        return

    # index = email.index("@")
    # return email[:index], email[index+1:]
    return tuple(email.split("@"))


print(myemail_info("emailaddress@naver.com"))
print(myemail_info("emailaddress@gmail.com"))
print(myemail_info("emailaddress"))