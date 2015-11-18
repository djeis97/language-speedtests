#!/bin/bash

# Records execuion times of GPF.

# Prime.c  Prime.java  Prime.js  Prime.py  Prime.rb

# Collect system and language information.

OS="$(uname -a)"
if [[ "$(uname -a | grep Linux)" == "" ]]
then
	CPU=$(sysctl -n machdep.cpu.brand_string)
	C="$(gcc --version 2>&1 | tail -n +2)" &> /dev/null 2>&1
else
	CPU=$(lscpu)
	C="$(gcc --version 2>&1 | grep gcc)" &> /dev/null 2>&1
fi

JAVA="$(java -version 2>&1)"
PYTHON="$(python --version 2>&1)"
RUBY="$(ruby --version 2>&1)"
NODE="$(node --version 2>&1)"

echo -e "

---------------------------------
`date +'%A %b %d %Y %r'`:
---------------------------------

System information:
	   OS:
		`echo $OS`

 	   CPU:
		`echo $CPU`


Language versions:
	C:
		`echo $C`
	Java:
		`echo $JAVA`
	Python:
		`echo $PYTHON`
	Ruby:
		`echo $RUBY`
	NodeJS:
		`echo $NODE`
"

echo "Testing C..."
(time ./bin/Prime.c)
echo -e "\n"

echo "Testing Java..."
cd ./bin
(time java Prime)
cd ..
echo -e "\n"

echo "Testing Python..."
(time python ./src/Prime.py)
echo -e "\n"

echo "Testing Ruby..."
(time ruby ./src/Prime.rb)
echo -e "\n"

echo "Testing JavaScript..."
(time node ./src/Prime.js)
echo -e "\n"

echo -e "Testing complete! \n-----------------"

