#Java Web 数据库作业

###1.建立一个数据库students
```SQL
mysql -u root
mysql>use mysql;
mysql>create database students;
```
![建立数据库](https://raw.githubusercontent.com/AvengerK/JavaWebHomeworkImageResource/master/Second/createDatabase.png)

###2.在student中建立3个表，student，course，sc
```SQL
mysql>use students;
mysql>create table...
```
![建立表](https://raw.githubusercontent.com/AvengerK/JavaWebHomeworkImageResource/master/Second/createTable_1.png)
![建立表2](https://raw.githubusercontent.com/AvengerK/JavaWebHomeworkImageResource/master/Second/createTable_2.png)

###3.编制数据输入到3个表中
```SQL
mysql>insert into student values(...)
```
![输入数据](https://raw.githubusercontent.com/AvengerK/JavaWebHomeworkImageResource/master/Second/insertIntoStudent.png)
![输入数据](https://raw.githubusercontent.com/AvengerK/JavaWebHomeworkImageResource/master/Second/insertIntoCourse.png)

###4.查询
####查询各位同学的选课清单
![search_1](https://raw.githubusercontent.com/AvengerK/JavaWebHomeworkImageResource/master/Second/selectCoursesCondition.png)

####查询男生
![search_boys](https://raw.githubusercontent.com/AvengerK/JavaWebHomeworkImageResource/master/Second/selectMalesCourses.png)

####查询每门课
![search_each_course](https://raw.githubusercontent.com/AvengerK/JavaWebHomeworkImageResource/master/Second/selectEachCourse.png)
