/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.project1;
import com.mycompany.project1.Employer;
import static com.mycompany.project1.WorkerDAO.getConnection;
import java.sql.*;
import java.util.*;

/**
 *
 * @author USER
 */
public class EmployerDAO {
    private static final String URL = "jdbc:mysql://localhost:3306/mydb";
    private static final String USERNAME = "root";
    private static final String PASSWORD = "root";
    private static Connection getConnection(){
        Connection conn = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection(URL, USERNAME, PASSWORD);
        }catch(Exception e){
            e.printStackTrace();
        }
        return conn;
    }
    public static boolean insertEmployer(Employer emp) {
        boolean status = false;
        Connection con = null;
        PreparedStatement ps = null;
        try{
            con = getConnection();
            String query = "INSERT INTO job_requests(Name,MobileNo,WorkType,Location,Budget,JobDate)VALUES(?,?,?,?,?,?)";
            ps = con.prepareStatement(query);
            ps.setString(1,emp.getName());
            ps.setString(2,emp.getMobileNo());
            ps.setString(3,emp.getWorkType());
            ps.setString(4,emp.getLocation());
            ps.setString(5,emp.getBudget());
            ps.setString(6,emp.getJobDate());
            int rowsInserted = ps.executeUpdate();
            status = rowsInserted > 0;
            con.close();
        }
        catch (SQLException e){
            System.out.println("Database Error:" + e.getMessage()); //print error to console
            e.printStackTrace();
        }
        
        
        return status;
    }
    public static List<Employer> getAllEmployer()  
{ 
        List<Employer> WorkList = new ArrayList<>(); 
        String sql= "SELECT * FROM job_requests"; 
         try (Connection conn = getConnection(); 
             Statement stmt = conn.createStatement(); 
             ResultSet rs = stmt.executeQuery(sql))  
         { 
             
                   while (rs.next()) { 
               WorkList.add(new Employer(
                      rs.getInt("Id"), 
                    rs.getString("Name"), 
                    rs.getString("MobileNo"), 
                    rs.getString("WorkType"), 
                    rs.getString("Location"), 
                    rs.getString("Budget"), 
                    rs.getString("JobDate") 
               )); 
                 
            } 
        } catch (Exception e) { 
            e.printStackTrace(); 
        }  
        return WorkList; 
        
    }
     public static void updateJobStatus(int jobid) {
 try {
 Connection con = getConnection();
 PreparedStatement ps = con.prepareStatement("UPDATE employer_jobs SETstatus='accepted' WHERE id=?");
 ps.setInt(1, jobid);
 ps.executeUpdate();
 } catch (Exception e) {
 e.printStackTrace();
 }
}
    public static boolean deleteEmployer(int id) {
Connection con = null;
PreparedStatement ps = null;
boolean status = false;
try {
con = getConnection();
String sql = "DELETE FROM job_requests WHERE id=?";
ps = con.prepareStatement(sql);
ps.setInt(1, id);
status = ps.executeUpdate() > 0;
} catch (Exception e) {
e.printStackTrace();
}
return status;
}

  public Employer validateEmployer(String username, String mobileno) {
Employer s = null;
 Connection conn =null;
try {
    conn = getConnection(); 
String sql = "SELECT * FROM job_requests WHERE Name=? AND MobileNo=?";
PreparedStatement ps = conn.prepareStatement(sql);
ps.setString(1, username);
ps.setString(2, mobileno);
ResultSet rs = ps.executeQuery();
if(rs.next()) {
s = new Employer(rs.getInt("id"),
rs.getString("Name"),
rs.getString("MobileNo"),
rs.getString("WorkType"),
rs.getString("Location"),

rs.getString("Budget"),
rs.getString("JobDate"));
 }
} catch (Exception e) {
e.printStackTrace();
}
return s;
}
}