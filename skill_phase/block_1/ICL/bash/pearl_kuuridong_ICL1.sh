#!/usr/bin/bash

#question 1

### =====
### Always make sure the code runs with output!!!
### =====

question_one(){
code_array=()
firstname_array=()
surname_array=()
program_array=()

while read line; do
IFS=',' read -r Code firstname surname Program <<< "$line"
Code=${Code//\"/}
firstname=${firstname//\"/}
surname=${surname//\"/}
Program=${Program//\"/}

code_array+=("$Code")
firstname_array+=("$firstname")
surname_array+=("$surname")
program_array+=("$Program")

done < <(tail -n +2 student_info.csv)

mkdir -p ~/AY20252026

for i in "${program_array[@]}"; do
mkdir -p ~/AY20252026/"$i"
done

for ((i=0; i<${#code_array[@]}; i++)); do
first_name=${firstname_array[i]}
last_name=${surname_array[i]}
program=${program_array[i]}
code=${code_array[i]}

mkdir -p ~/AY20252026/$program/$code
echo "$first_name">> ~/AY20252026/$program/$code/$first_name.txt
echo "${first_name,,}.${last_name,,}@aims.ac.rw">> ~/AY20252026/$program/$code/$first_name.txt
done
}

# question 2

### =====
### Good!
### =====

question_two(){
read -p "Enter a positive integer: " n
read -p "Enter y to work with multiples of three, n for non-multiples of three: " mult_three
sum_of_square_mult_three=0
sum_of_cubes_not_mult_three=0

if [ "$mult_three" == "y" ]; then
for (( i=0; i<=$n; i+=3 )); do
sum_of_square_mult_three=$(( sum_of_square_mult_three + (i*i) ))
done
echo "The sum of squares for multiples of three is: $sum_of_square_mult_three"
elif [ "$mult_three" == "n" ]; then
for (( i=0; i<=$n; i++ )); do
if [ $(( i%3 )) -ne 0 ]; then
sum_of_cubes_not_mult_three=$(( sum_of_cubes_not_mult_three+(i*i*i) ))
fi
done
echo "The sum of squares for integers that are not multiples of three is: $sum_of_cubes_not_mult_three"
fi
}

#sum_of_numbers
# question 3
question_three(){
days=("Monday" "Tuesday" "Wednesday" "Thursday" "Friday" "Saturday" "Sunday")
read -p "Enter a number for the day of the week [0-6]: " num
if [[ $num -ge 0 && $num -le 6 ]]; then
if [[ $num -eq 5 || $num -eq 6 ]]; then
echo "Weekend"
else
echo "${days[num]}"
fi
fi
}
# Good

# question 4
question_four(){
days=("31" "28" "31" "30" "31" "30" "31" "31" "30" "31" "30" "31")
read -p "Enter a number for the month of the year [0-11]: " num
if [[ $num -ge 0 && $num -le 11 ]]; then
echo "${days[num]}"
fi
}
# Good

# question 5
question_five_for(){
for i in {1..3}; do
echo "Pearl"
done
}

question_five_while(){
i=1
while [ $i -le 3 ]; do
echo "Pearl"
i=$(( i+1 ))
done
}
# Good

###########################################################################################
# Ok.
###########################################################################################


# Question 6
question_six(){
read -p "Enter the first term of your fibonacci sequence: " a
read -p "Enter the second term of your fibonacci sequence: " b

echo $a
echo $b
for (( i=0; i<=12; i++)); do
new_term=$(( a + b ))
a=$b
b=$new_term
echo $new_term
done
}
###########################################################################################
# Ok.
###########################################################################################



# question 7
question_seven(){
read -p "Enter your first value: " a
read -p "Enter your second value: " b

echo $a
echo $b
for (( i=0; i<=27; i++)); do
new_term=$(echo "0.5*$b - 3*$a" | bc -l)
a=$b
b=$new_term
echo $new_term
done
}

###########################################################################################
# Ok.
###########################################################################################


question_eight_a_for(){
read -p "Enter a positive integer: " n
total=0
if [[ $n -le 0 ]]; then
null
else
for (( i=1; i<=$n; i++)); do
total=$(( (i*i)+total ))
done
echo $total
fi
}

###########################################################################################
# Ok.
###########################################################################################


question_eight_a_while(){
read -p "Enter a number: " n
total=0
i=1
if [[ $n -le 0 ]]; then
null
else
while [[ $i -le $n ]]; do
total=$(( (i*i)+total ))
i=$(( i+1 ))
done
fi
echo $total
}

question_eight_b(){
read -p "Enter a number: " M
i=1
total=0
while [[ $total -lt $M ]]; do
total=$(( (i*i)+total ))
i=$(( i + 1 ))
done
echo $(( i-1 ))
}

###########################################################################################
# Ok.
###########################################################################################


# question 9
question_nine_factors(){
read -p "Enter the number whose factors you want to find: " num

factor_array=(1)

for (( i=2; i<=$num; i++ )); do
if [ $(( num%i )) -eq 0 ]; then
factor_array+=($i)
fi
done
echo ${factor_array[@]}
}

question_nine_prime_factors() {
    read -p "Enter the number whose prime factors you want to find: " num

    n=$num
    prime_factor_array=()
    while [ $((n % 2)) -eq 0 ]; do
        prime_factor_array+=(2)
        n=$((n / 2))
    done
    i=3
    while [ $((i * i)) -le $n ]; do
        while [ $((n % i)) -eq 0 ]; do
            prime_factor_array+=($i)
            n=$((n / i))
        done
        i=$((i + 2))
    done
    if [ $n -gt 2 ]; then
        prime_factor_array+=($n)
    fi

    echo "${prime_factor_array[@]}"
}


# Question 10
question_ten(){
read -p "Enter the number whose multiplication table you want? [0-9]: " n
read -p "What value do you want the multiplication table to stop at? " N

if [[ $n -ge 0 && $n -le 9 ]]; then
for ((i=1; i<=$N; i++)); do
echo "$n * $i = $(( $n * $i ))"
done
fi
}
# Good

# question 11
question_eleven(){
for i in {0..40}; do
if [[ $(( i%3 )) -eq 0 || $(( i%7 )) -eq 0 || $(( i%11 )) -eq 0 ]]; then
echo $i
fi
done
}
# Good


question_twelve(){
while true; do
read -p "Enter your x coordinate: " x
read -p "Enter your y coordinate: " y
if [ "$(echo "$y == 0"|bc)" -eq 1 ]; then

if [ "$(echo "$x == 0"|bc)" -eq 1 ]; then
echo "($x, $y) is the origin"
else
echo "($x, $y) is on the horizontal axis"
fi

elif [ "$(echo "$y >0"|bc)" -eq 1 ]; then
if [ "$(echo "$x >0"|bc)" -eq 1 ]; then
echo "($x, $y) is in the first quadrant"
elif [ "$(echo "$x <0"|bc)" -eq 1 ]; then
echo "($x, $y) is in the second quadrant"
else
echo "($x, $y) is on the vertical axis"
fi

elif [ "$(echo "$y <0"|bc)" -eq 1 ]; then
if [ "$(echo "$x > 0"|bc)" -eq 1 ]; then
echo "($x, $y) is in the fourth quadrant"
elif [ "$(echo "$x <0"|bc)" -eq 1 ]; then
echo "($x, $y) is in the third quadrant"
else
echo "($x, $y) is on the vertical axis"
fi
fi
read -p "Do you want to keep the programm running? (y for yes, n for no) " q

if [ "$q" == "n" ]; then
break
elif [ "$q" == "y" ]; then
continue
fi
done
}
# Good


# Question 13
question_thirteen(){

while true; do

read -p "Enter any integer between 0 and 9: " x
read -p "Enter any integer between 0 and 255: " max

while [[ $x -lt 0 || $x -gt 9 ]]; do
read -p "Your first value must be between 0 and 9: " x
done

while [[ $max -lt 0 || $max -gt 255 ]]; do
read -p "Your second value must be between 0 and 255: " max
done

for (( i=0; i<=$max; i++ )); do
echo "$x * $i = $(( x*i ))"
done

read -p "do you want to run this again? y/n " answer

if [[ $answer == "y" ]]; then
continue

elif [[ $answer == "n" ]]; then
break 
fi
done
}
# Improvements:
# - The question asks for multiples of x between 0 and max, not x multiplied by all numbers up to max
# - Should only show multiples of x (0, x, 2x, 3x, etc.) not all multiplication operations
# - Current implementation shows x*0=0, x*1=x, x*2=2x, etc. but should show just the multiples
