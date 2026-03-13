/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.project1;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author LENOVO User
 */
public class AdminDAO {
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
     public static List<Employer> getAllEmployer()  
{ 
    PreparedStatement stmt = null;
    Connection conn = null;
        List<Employer> WorkList = new ArrayList<>(); 
        try {
            conn = getConnection();
            String sql= "SELECT * FROM job_requests where Status=?" ;
            stmt = conn.prepareStatement(sql);
            stmt.setString(1, "accepted");
            ResultSet rs = stmt.executeQuery();               
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
            } 
        } catch (Exception e) { 
            e.printStackTrace(); 
        }  
        return WorkList; 
    }
     
    
}