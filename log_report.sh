info=0
error=0
warn=0
if [[ ! -f "log.txt" ]];then
	echo "FIle not exists"
fi 
while IFS= read -r Line
do
	echo $Line
	if echo $Line |grep -iq "INFO"; then
		((info++))
	elif echo $Line | grep -iq "ERROR";then
		((error++))
	 elif echo $Line | grep -iq "WARN";then
		 ((warn++))
	fi
done < "log.txt";
echo "Generate Report" > rockk.txt
echo  "info:" $info >> rockk.txt
echo  "error:" $error >> rockk.txt
echo  "warn:" $warn >> rockk.txt
if [[ error -gt 10 ]]; then
	echo "Error:Critical" >> rockk.txt
elif [[ error -gt 0 ]]; then
        echo "Error:Warn" >> rockk.txt
else
	echo "Error:healthy" >> rockk.txt


fi
