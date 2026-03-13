/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.project1;

/**
 *
 * @author USER
 */
public class Worker {
    
    private int jobid;
    private String name ;
    private String mobileno ;
    
   
    private int id ;
    public Worker ( int jobid,String name,String mobileno){
        this.jobid=jobid;
        this.name = name ;
        this.mobileno = mobileno;
        
    }
    public Worker(int id,int jobid,String name,String mobileno){
        
        this.id = id;
        this.jobid=jobid;
        this.name = name ;
        this.mobileno = mobileno;
        
        
    }
    public int getId(){return id;}
    public String getName(){return name ;}
    public String getMobileNo(){return mobileno ;}
    public int getjobId(){return jobid;}
   

    
}
