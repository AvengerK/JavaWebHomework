<%--<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>--%>
<%--
  Created by IntelliJ IDEA.
  User: hou
  Date: 2016/4/23
  Time: 9:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="test.Student" %>
<%--<%@ page import="java.util.List" %>--%>
<%--<%@ page import="java.util.ArrayList" %>--%>
<%--<%@ page import="java.sql.*" %>--%>
<%@ page import="test.StudentOperation" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ConcurrentModificationException" %>
<%@ page import="java.awt.geom.RectangularShape" %>
<%@ page import="java.sql.*" %>
<%--<%
    class Student {
        private int id;
        private String name;

        public int getId(){
            return id;
        }

        public void setId(int id){
            this.id = id;
        }

        public String getName(){
            return name;
        }

        public void setName(String name){
            this.name = name;
        }

        public Student(int id,String name){
            super();
            this.name = name;
            this.id = id;
        }
    }

%>--%>
<%--<%
    class StudentOperation {
        private List readStudent(){
            List<Student> list = new ArrayList<>();
            Connection connection = null;
            PreparedStatement preparedStatement = null;
            ResultSet resultSet = null;

            try{
                Class.forName("com.mysql.jdbc.Driver");
            }catch (ClassNotFoundException e){
                e.printStackTrace();
            }
            try{
                connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/student","root",null);
                String sql = "SELECT * FROM student WHERE student_id>=?";
                preparedStatement = connection.prepareStatement(sql);
                preparedStatement.setInt(1,1);
                resultSet = preparedStatement.executeQuery();
                while(resultSet.next()){
//                int id = resultSet.getInt("student_id");
                    String studentName = resultSet.getString("student_name");
                    int studentId = resultSet.getInt("student_id");
                    Student student = new Student(studentId,studentName);
                    list.add(student);
                }
            }catch (SQLException e){
                e.printStackTrace();
            }finally {
                try{
                    if(resultSet!=null){
                        resultSet.close();
                    }
                    if(preparedStatement!=null){
                        preparedStatement.close();
                    }
                    if(connection!=null){
                        connection.close();
                    }
                }catch (SQLException e){
                    e.printStackTrace();
                }
            }
            return list;
        }
    /*public static void main(String[] args){
        StudentOperation studentOperation = new StudentOperation();
        List<Student> list = studentOperation.readStudent();
        System.out.println(list.size());
        for(Student student : list){
            System.out.println(student.getName()+"\t");
            System.out.println(student.getId());
        }
    }*/
    }
%>--%>

<html>
  <head>
    <title>Homework</title>
  </head>
  <body>
  <h1 align="center">Student Database</h1>

  <table border="1">
    <tr>
      <td>Student Name</td>
      <td>Student ID</td>
    </tr>
    <%--<%
    try {
      StudentOperation studentOperation = new StudentOperation();
      List<Student> list = studentOperation.readStudent();
      for(Student student : list){  %>
    <tr>
      <td><%= student.getName() %></td>
      <td><%= student.getId() %></td>
    </tr>
    <%     }
    }catch (Exception e){e.printStackTrace();}
    %>--%>
    </table>
    <%
      try {
        Class.forName("com.mysql.jdbc.Driver");
      }catch (ClassNotFoundException e){
        e.printStackTrace();
      }

      try {
        Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/student","root","");
        Statement statement = connection.createStatement();
        String sql = "SELECT * FROM student";
        ResultSet resultSet = statement.executeQuery(sql);
        while (resultSet.next()){
          out.println(resultSet.getString("student_name"));
        }
      }catch (SQLException e){
        e.printStackTrace();
      }

    %>
  <%--<%
      StudentOperation studentOperation = new StudentOperation();
      List<Student> list = studentOperation.readStudent();
      for(Student student : list){
          out.print(student.getId()+"\t");
          out.println(student.getName());
      }
  %>--%>
  <%--<%
      out.println("hello");
  %>--%>
  <%
      /*StudentOperation studentOperation = new StudentOperation();
      List<Student> list = studentOperation.readStudent();
      out.print(list.size());*/

      /*try{
          Class.forName("com.mysql.jdbc.Driver");
      }catch (ClassNotFoundException e){
          e.printStackTrace();
      }
      try {
          Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/student","root",null);
          String sql = "SELECT * FROM student";
          Statement statement = connection.createStatement();
          ResultSet resultSet = statement.executeQuery(sql);
          while (resultSet.next()){
              out.print(resultSet.getString(1));
          }
      }catch (SQLException e){
          e.printStackTrace();
      }*/
  %>
  </body>
</html>
