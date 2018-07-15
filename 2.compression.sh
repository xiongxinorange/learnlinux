#脚本接受一个压缩文件的路径，和解压的目的路径（默认当前目录）
#脚本接受参数-list，列出当前支持的压缩文件类型
#!/bin/bash
Usage()
{
	echo "usage:2.compression.sh [--list] or [Source compressed file] [Destination path]"
	echo "Self compression according to the file name suffix"
	exit
}
List()
{
	echo "Supported file types:zip tar tar.gz tar.bz2"
	exit
}
filename=$1	#获取要解压的文件名
path=$2		#解压的目的路径
extension=${filename##*.} #获取文件的后缀名
if [ -z $filename ]
then	
	Usage
elif [ $filename = "--list" ]
then
	List
elif [[ $filename && $path ]]
then
	case $extension in
		"zip")
		  eval "unzip $filename -d $path"
		  ;;
	 	"tar")
		  eval "tar xvf $filename -C $path"
		  ;;
		"gz")
		  eval "tar zxvf $filename -C $path"
		  ;;
		"bz2")
		  eval "tar jxvf $filename -C $path"
		  ;;
		*) 
		  echo "Error,please input filename with extension including zip,tar,tar.gz,tar.bz2"
		  ;;
	esac
fi
