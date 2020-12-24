echo "Welcome to Employee"
#!/bin/bash -x

echo "Employee Wage Compuation Problem"
isPresent=1
randomCheck=$(( RANDOM%2 ))
if [[ $randomCheck -eq $isPresent ]]
then
    echo "Employee is present"
else
     echo "Employee is not present"
fi
