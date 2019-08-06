for m in $(ls $1)
do
if [ -d "$1/$m" ];then
	echo "$1/$m is a dir"
	continue
fi
depentList=$( ldd $1/$m | awk '{if (match($3,"/")){ print $3}}')
echo $depentList
cp $depentList $2/
done

