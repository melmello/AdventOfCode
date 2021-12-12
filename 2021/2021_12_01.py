input_values = []
output_value = 0

with open("2021_12_01.txt") as file:
    for line in file:
        input_values.append(int(line))

for idx, val in enumerate(input_values):
    if idx != len(input_values) - 1 and input_values[idx + 1] > val:
        output_value += 1

print(output_value)