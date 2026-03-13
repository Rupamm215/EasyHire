/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.project1;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 *
 * @author USER
 */
public class WorkerDAO {

    private static final String URL = "jdbc:mysql://localhost:3306/mydb";
    private static final String USERNAME = "root";
    private static final String PASSWORD = "root";

    public static Connection getConnection() {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            return DriverManager.getConnection(URL, USERNAME, PASSWORD);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    // INSERT WORKER
    public static boolean insertWorker(Worker worker) {
        String query = "INSERT INTO worker(WName, MobileNo,jobid,accepted_date) VALUES (?, ?,?,NOW())";
        try (Connection con = getConnection();
             PreparedStatement ps = con.prepareStatement(query)) {

            ps.setString(1, worker.getName());
            
            ps.setString(2, worker.getMobileNo());
             ps.setInt(3, worker.getjobId());

            return ps.executeUpdate() > 0;

        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }
public static boolean deleteWorker(int id) {
Connection con = null;
PreparedStatement ps = null;
boolean status = false;
try {
con = getConnection();
String sql = "DELETE FROM worker WHERE id=?";
ps = con.prepareStatement(sql);
ps.setInt(1, id);
status = ps.executeUpdate() > 0;
} catch (Exception e) {
e.printStackTrace();
}
return status;
}

}