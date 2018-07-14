#脚本能够接受参数n
#递归计算n!的结果，并打印在屏幕上
#!bin/bash
Usage()
{
	echo "usage: 1.factorial.sh [n]"
	echo "calculates a nunber's factorial"
	exit
}
Factorial()
{
	number=$1
	if [ $number -eq 0 ]
	then
		sum=1
	else
		Factorial $(number -1)
		result=$sum
		number=$number
		sum=$(number*result)
	fi
	return $sum
}
if [ -z $1 ]	#判断是否输入了参数
then Usage
fi
if [ $1 -lt 0 ]	#判断参数是否小于0
then
	echo"Please input a number that not less than 0"
	exit
fi
Factorial $1
echo "$sum"
exit
