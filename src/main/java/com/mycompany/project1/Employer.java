/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.project1;

/**
 *
 * @author USER
 */
public class Employer {    
    private String name ;
    private String mobileno ;
    private String worktype ;
    private String location ;
    private String budget ;
    private String date ;
    private int id ;
    public Employer (String name,String mobileno,String worktype,String location,String budget,String date){
        this.name = name ;
        this.mobileno = mobileno;
        this.worktype = worktype ;
        this.location = location;
        this.budget = budget;
        this.date = date;
        
    }
    public Employer(int id,String name,String mobileno,String worktype,String location,String budget,String date){
        this.id = id;
        this.name = name ;
        this.mobileno = mobileno;
        this.worktype = worktype ;
        this.location = location;
        this.budget = budget;
        this.date = date;
        
        
    }
    public int getId(){return id;}
    public String getName(){return name ;}
    public String getMobileNo(){return mobileno ;}
    public String getWorkType(){return worktype ;}
    public String getLocation(){return location ;}
    public String getBudget(){return budget ;}
    public String getJobDate(){return date;}

    

    
}