# Loops

## For in a array
numbers = [1, 2, 3, 4, 5]
for num in numbers:
    print(num)

## For in a range
sum = 0
for num in range(1, 11):
    sum += num

print("Sum:", sum) 

## While
count = 0
while count < 5:
    print(count)
    count += 1

## Break: is used to exit a loop prematurely when a certain condition is met
numbers = [1, 2, 3, 4, 5]
for num in numbers:
    if num == 3:
        break
    print(num)

## Continue: is used to skip the rest of the current iteration of a loop and move to the next iteration
for num in numbers:
    if num == 2:
        continue
    print(num)