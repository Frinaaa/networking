if [ $# -ne 1 ]
then
echo "syntax is <$0>[<file name>]"
exit 1
fi
set -xv
cp $1 file
#1 = `wc -1 file | cut -c 1,1`
1 =` cat file | wc -l`
rm =rfile
while [ $1 -ge 1 ]
do
tail -n 1 file >> rfile
1= `expr $l -1`
head -n $1 file > temp
mv temp file
done
