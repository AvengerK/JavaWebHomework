#Java Web 数据库作业

###1.建立一个数据库students
```SQL
mysql -u root
mysql>use mysql;
mysql>create database students;
```
![建立数据库](image/createDatabase.png)

###2.在student中建立3个表，student，course，sc
```SQL
mysql>use students;
mysql>create table...
```
![建立表](image/createTable_1.png)
![建立表2](image/createTable_2.png)

###3.编制数据输入到3个表中
```SQL
mysql>insert into student values(...)
```
![输入数据](image/insertIntoStudent.png)
![输入数据](image/insertIntoCourse.png)

###4.查询
* 查询各位同学的选课清单
![search_1](image/selectCoursesCondition.png)

* 查询男生
![search_boys](image/selectMalesCourses.png)

* 查询每门课
![search_each_course](image/selectEachCourse.png)
