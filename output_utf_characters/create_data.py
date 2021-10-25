def get_nums(min_num,max_num):
    nums = []
    for i in range(min_num,max_num):
        nums.append(str(i))
    
    return ",".join(nums)

asm_vars = ""
min_num=0
max_num=127
for i in range(0,8):
    min_num= i*pow(2,7)
    max_num= min_num + pow(2,7)
    nums = get_nums(min_num, max_num)
    asm_vars += f'nums{i}: db {nums} \n'

print(asm_vars)
