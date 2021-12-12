input_values = [0] * 12

with open("2021_12_03.txt") as file:
    for line in file:
        for idx, val in enumerate(line):
            print(idx)
            if val == "\n":
                continue
            if int(val) == 1:
                input_values[idx] += 1
            elif int(val) == 0:
                input_values[idx] -= 1

binary_list = [str(1) if x > 1 else str(0) for x in input_values]
gamma = ''.join(binary_list)
epsilon = ''.join(['1' if i == '0' else '0'
                   for i in gamma])
gamma_int = int(gamma, 2)
epsilon_int = int(epsilon, 2)