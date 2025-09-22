#!/bin/bash
names="Lema Lois Arlet Musonda Kasongo"
names2=("Lema Seknewna" "Lois" "Arlet" "Musonda" "Kasongo")
numbers=(1 3 7 9 0 4 5 6)


for i in {1..10}; do
echo "We are at iteration: $i"
done


# Let greet each person's name from the variable names.

for name in $names; do
echo "Hello, $name!"
done

# Example for the variable names2

for name in "${names2[@]}"; do
echo "Hello, $name!"
done

# Operation: arithmetic & logical
## Arithmetic operators
a=10
b=3

### Addition: +
echo "$a + $b = $((a + b))."

### Subtraction: -
echo "$a - $b = $((a - b))."

### Multiplication: *

echo "$a * $b = $((a * b))."

### Division: /
echo "$a / $b = $((a / b))."
echo "$a / $b = $(echo "scale=4; $a/$b" | bc)"

### Exponentiation: **

echo "$a ** $b or $a ^ $b =  $((a ** b))"
# It is hard to use ** to get the squareroot of a number.
# We simply use the inbuild sqrt function.
echo "The squareroot of a is $(echo "scale=4; sqrt($a)" | bc)"
### Modulus: %

echo "$a mod $b = $((a % b))."

# Exercise: Print even numbers between 1 and 10 using for loop 
# and if statement.

for (( i=1; i<=10; i++ )); do
if (( $i % 2 == 0 )); then
echo $i
else continue
fi
done
