age = 200

if age > 120:
    print("invalid input")
    exit()


if age >= 60:
    print("senior")
elif age >= 30:
    print("adult")
elif age > 18:
    print("young")
else:
    print("bache ho abhi")