package test;
//import test.Student;

//import com.mysql.jdbc.Connection;
//import com.mysql.jdbc.PreparedStatement;
//import com.mysql.jdbc.ResultSet;
//import org.omg.PortableInterceptor.SYSTEM_EXCEPTION;

import java.sql.*;
//import java.sql.Connection;
import java.sql.DriverManager;
//import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by hou on 2016/4/23.
 */
public class StudentOperation {
    public List readStudent(){
        List<Student> list = new ArrayList<>();
        com.mysql.jdbc.Connection connection = null;
        PreparedStatement preparedStatement = null;
        ResultSet resultSet = null;

        try{
            Class.forName("com.mysql.jdbc.Driver");
        }catch (ClassNotFoundException e){
            e.printStackTrace();
        }
        try{
            connection = (com.mysql.jdbc.Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/student","root",null);
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
    public static void main(String[] args){
        StudentOperation studentOperation = new StudentOperation();
        List<Student> list = studentOperation.readStudent();
        System.out.println(list.size());
        for(Student student : list){
            System.out.println(student.getName()+"\t");
            System.out.println(student.getId());
        }
    }
}
