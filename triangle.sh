#check whether the given number form a triangle if it is true what is ty
#pe of triangle
if [ $# -ne 3 ]
then
  echo "syntax is <$0><no1><no2><no3>"
else
a=$1
b=$2
c=$3
if [ $a -gt $c ]
then 
  t=$a
  a=$c
c=$t
fi
if [ `expr $a + $b`  -gt $c ]
then
  echo "triangle can be formed"
else
  echo "triangle cannot be formed"
  exit 1
fi 
if [ $a -eq $b -a $a -eq $c ]
then  
 echo "equilateral triangle" 
exit 0
fi
if [ $a -eq $b -o $a -eq $c -o $b -eq $c ]
then
  echo "isocellus triangle"
  exit 1
fi
if [ `expr $a \* $a + $b \* $b` -eq `expr $c \* $c` ]
then
echo "right angled triangle"
exit 0
fi
echo "normal triangle"
fi
