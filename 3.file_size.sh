#要求
#------------------------------------------------
#不给脚本任何参数，默认当前路径
#脚本通过-n N指定列出的文件个数，-d DIR指定路径
#------------------------------------------------
#!/bin/bash
Usage()
{
	echo "usage:4.file_size.sh [-n N] [-d DIR]"
	echo " show top N largest files/firectories"
	exit
}
Printsort()
{
	local n=$1
	local path=$2
	echo "The largest files/directories in $2 are:"
	du -sh $path | sort -rn | sed -n $n | awk '{print "\t" NR "\t" $1 "\t" $2}'
	exit
}
if [[ $1 = "-n" && $2 = "-d"]]
then
	Printsort $1 $2
else
	Usage
fi
