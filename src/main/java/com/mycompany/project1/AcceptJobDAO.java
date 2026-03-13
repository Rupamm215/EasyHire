/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */package com.mycompany.project1;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class AcceptJobDAO {

    private static final String URL = "jdbc:mysql://localhost:3306/mydb";
    private static final String USERNAME = "root";
    private static final String PASSWORD = "root";

    // Get DB Connection
    public static Connection getConnection() {
        Connection conn = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection(URL, USERNAME, PASSWORD);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return conn;
    }

    // INSERT accepted job
    public static boolean insertAcceptJob(AcceptJob user) {

        boolean status = false;
        String sql = "INSERT INTO worker (WName, MobileNo, jobid, accepted_date) VALUES (?, ?, ?, CURDATE())";

        try (Connection con = getConnection();
             PreparedStatement ps = con.prepareStatement(sql)) {

            ps.setString(1, user.getWorker_Name());
            ps.setString(2, user.getWorker_Mobile());
            ps.setInt(3, user.getJob_Id());

            status = ps.executeUpdate() > 0;

        } catch (Exception e) {
            e.printStackTrace();
        }
        return status;
    }

    // FETCH all workers
    public static List<AcceptJob> getAllWorkers() {

        List<AcceptJob> list = new ArrayList<>();
        String sql = "SELECT * FROM worker";

        try (Connection con = getConnection();
             Statement stmt = con.createStatement();
             ResultSet rs = stmt.executeQuery(sql)) {

            while (rs.next()) {
                AcceptJob aj = new AcceptJob(
                        rs.getInt("id"),
                        rs.getString("WName"),
                        rs.getString("MobileNo"),
                        rs.getInt("jobid"),
                        rs.getString("accepted_date")
                );
                list.add(aj);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }
}
