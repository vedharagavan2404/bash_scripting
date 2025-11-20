
#!/bin/bash

echo "for loop"
for ((i=0; i<=10; i++)); do
	echo "$i"
done

echo "while loop"
i=0;
while [ $i -le 10 ]; do
	echo "$i"
	((i++))
done
       	


