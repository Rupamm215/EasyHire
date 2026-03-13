package com.mycompany.project1;

public class AcceptJob {

    private int id;
    private String workerName;
    private String mobileNo;
    private int jobId;
    private String acceptedDate;

    // Constructor for INSERT
    public AcceptJob(String workerName, String mobileNo, int jobId) {
        this.workerName = workerName;
        this.mobileNo = mobileNo;
        this.jobId = jobId;
    }

    // Constructor for FETCH
    public AcceptJob(int id, String workerName, String mobileNo, int jobId, String acceptedDate) {
        this.id = id;
        this.workerName = workerName;
        this.mobileNo = mobileNo;
        this.jobId = jobId;
        this.acceptedDate = acceptedDate;
    }

    // ===== Getters =====
    public int getId() {
        return id;
    }

    public String getWorkerName() {
        return workerName;
    }

    public String getMobileNo() {
        return mobileNo;
    }

    public int getJobId() {
        return jobId;
    }

    public String getAcceptedDate() {
        return acceptedDate;
    }

    // ===== Setters =====
    public void setId(int id) {
        this.id = id;
    }

    public void setWorkerName(String workerName) {
        this.workerName = workerName;
    }

    public void setMobileNo(String mobileNo) {
        this.mobileNo = mobileNo;
    }

    public void setJobId(int jobId) {
        this.jobId = jobId;
    }

    public void setAcceptedDate(String acceptedDate) {
        this.acceptedDate = acceptedDate;
    }

    String getWorker_Name() {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    int getJob_Id() {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    String getWorker_Mobile() {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }
}
