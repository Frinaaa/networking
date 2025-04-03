# add 3 numbers
if test $# -ne 3
then
 echo "syntax is <$0><n1><n02><n03>"
else
 sum=`expr $1 + $2 + $3`
echo "sum is $sum"
fi
