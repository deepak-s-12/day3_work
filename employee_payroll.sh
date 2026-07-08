tax_calculate(){
	salary=$3;
echo $salary;
tax=0
if [[ $salary -le 30000 ]];then
	tax=$(( $salary * 5 ))
	tax=$(( $tax / 100 ))
elif  [[ $salary -gt 30000 ]] &&  [[ $salary -le 60000 ]] ;then
	 tax=$(( $salary * 10 ))
        tax=$(( $tax / 100 ))
elif  [[ $salary -gt 60000 ]];then
         tax=$(( $salary * 15 ))
        tax=$(( $tax / 100 ))

fi
echo $tax
bonus=0
if  [[ $salary -le 50000 ]];then
	bonus=2000
elif [[ $salary -gt 50000 ]];then
bonus=5000
fi
netsalary=$(( $bonus + $salary -$tax))
echo $netsalary
{
echo -n $1 " ";
echo -n $2  " ";
echo -n $3  " ";
echo -n $bonus4  " ";
echo -n $netsalary  " ";
echo -n $tax  " ";
}>>rockk.txt
}
echo "ID Name Salary Bonus Netsalary Tax" > "rockk.txt"
while IFS= read -r Line
do
	echo >> "rockk.txt"
	tax_calculate $Line
done < employee.txt;
