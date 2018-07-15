# learnlinux
### 文件结构
* 1.factorial.sh
* 2.compression.sh
* 3.file_size.sh
### 程序运行结果
#### task_1
![image](https://github.com/xiongxinorange/learnlinux/blob/master/2018-07-15%2020-44-24%E5%B1%8F%E5%B9%95%E6%88%AA%E5%9B%BE.png)
#### task_2
![image](https://github.com/xiongxinorange/learnlinux/blob/master/2018-07-15%2021-02-25%E5%B1%8F%E5%B9%95%E6%88%AA%E5%9B%BE.png)
![image](https://github.com/xiongxinorange/learnlinux/blob/master/2018-07-15%2021-02-45%E5%B1%8F%E5%B9%95%E6%88%AA%E5%9B%BE.png)
![image](https://github.com/xiongxinorange/learnlinux/blob/master/2018-07-15%2021-03-04%E5%B1%8F%E5%B9%95%E6%88%AA%E5%9B%BE.png)
![iamge](https://github.com/xiongxinorange/learnlinux/blob/master/2018-07-15%2021-04-09%E5%B1%8F%E5%B9%95%E6%88%AA%E5%9B%BE.png)
#### task_3
![image](https://github.com/xiongxinorange/learnlinux/blob/master/2018-07-15%2021-11-27%E5%B1%8F%E5%B9%95%E6%88%AA%E5%9B%BE.png)
### 解题思路
#### task_1
* 判断是否接受了参数，没有接受参数则调用Usage函数告诉用户用法反馈
* 再判断参数是否小于0，如果小于0，则告知用户输入小于0，错误，需要输入不小于0的数
* 大于等于0时调用Factorial函数，Factorial函数采用递归
* 如果n不等于0,则sum=n×Factorial（n-1）
* 最后返回的sum就是求得的阶层。
##### 编程中遇到的问题
* 没有设置全局变量，导致无论输入是什么值，输出结果总是0
* 在n×Factorial不能直接相乘，不能sum*result
#### task_2
* 没有输入参数时，给予用户Usage反馈
* 当参数是--list时告诉用户支持解压的后缀名称
* 然后在filename和path参数都给定时用case语句判断各种情况
* 然后怎别case判断的后缀名分别解压
##### 编程中遇到的问题
* 如何获取文件的后缀名（百度）
* 如何解压各种不同后缀名的文件（百度）
* tar这一类文件的路径要用 -C而不是 -c
#### task_3
* 当不指定n时，将当前路径所有文件降序排序，然后全部列出
* 当给定n和指定路径d时，先按降序排序然后列出前n个最大的文件
* 否则告诉用户Usage反馈正确输入函数
##### 编程遇到的问题
* 用du -sh | sort -rn来降序排序好像达不到列出全部文件的效果，用ls -sh | sort -rn好像可以解决
* 怎样列出前n个文件（百度）
* 参考了csdn上某位师兄的这道题 https://blog.csdn.net/qq_33096883/article/details/52048590 
