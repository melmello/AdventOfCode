input_values = {
    "forward" : 0,
    "up": 0,
    "down":0
}

with open("2021_12_02.txt") as file:
    for line in file:
        splitted_line = line.split()
        action = splitted_line[0]
        action_value = int(splitted_line[1])
        input_values.update({action: input_values.get(action) + action_value})

movement_value = (input_values.get("forward"), input_values.get("down") - input_values.get("up"))
output_value = movement_value[0] * movement_value[1]

print(output_value)