package com.vgt.controller;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import com.vgt.pojo.Student;

public class StudentController {
	
	public int saveData(Student st)
	{
		int n=0;
		try
		{
			Configuration cfg=new Configuration();
	        cfg.configure("hibernate.cfg.xml"); //file name optional if this file in right folder with this name, otherwise we have to give filename and path of folder 
	        SessionFactory factory=cfg.buildSessionFactory();
	        Session session=factory.openSession();
	        
	        //Start transaction
	        session.beginTransaction();
	        session.save(st);
	        
	        //commit the transaction
	        session.getTransaction().commit();
	        n=1;
		}
		catch(Exception e)
		{
			System.out.println(""+e);
		}
		return n;
	}
}
