import random

num_list = random.sample(range(0, 101), 10)
print(num_list)

# num_dict = {num_list.index(n)+1:"pass" if n>= 60 else "nopass" for n in num_list}
num_dict = {i:"pass" if n >= 60 else "nopass" for i, n in enumerate(num_list, 1)}
# num_dict = {i+1:"pass" if num_list[i]>=60 else "nopass" for i in range(10)}
print(num_dict)