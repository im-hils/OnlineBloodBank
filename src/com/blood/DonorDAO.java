package com.blood;


import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

public class DonorDAO {
	
	private static SessionFactory sf;
	Session s;
	Transaction tx;
	
	public DonorDAO()
	{
		sf=new Configuration().configure().buildSessionFactory();
	}
	
	//inserting data to the table
	public void insert(Donor donor) {
		s=sf.openSession();
		tx=s.beginTransaction();
		s.save(donor);
		tx.commit();
		s.close();
	}
	
	public void deleteAccount(Donor donor) {
		s=sf.openSession();
		tx=s.beginTransaction();
		Donor dr=(Donor) s.get(Donor.class, donor.getId());
		s.delete(dr);
		tx.commit();
		s.close();
		
	}
	
	//Updating donor details
	public void updateDonor(Donor donor) {
		try {
		s=sf.openSession();
		tx=s.beginTransaction();
		Donor dr=(Donor) s.get(Donor.class, donor.getId());
//		String name=(String) donor.getName();
		dr.setName(donor.getName());
		dr.setDob(donor.getDob());
		dr.setHeight(donor.getHeight());
		dr.setWeight(donor.getWeight());
		dr.setEmail(donor.getEmail());
		dr.setGender(donor.getGender());
		dr.setCity(donor.getCity());
		dr.setDistrict(donor.getDistrict());
		dr.setBloodgroup(donor.getBloodgroup());
		dr.setPhone(donor.getPhone());
		dr.setPin(donor.getPin());
		s.update(dr);
		tx.commit();
		s.close();
		}
		catch (Exception e) {
			System.out.println("error"+e);
		}
		
		
//		Query query=s.createQuery(" update Donor d where "
//				+ "d.phone='"+donor.getPhone()+"',"
//				+ "d.email='"+donor.getEmail()+"',"
//				+ "d.password='"+donor.getPassword()+"',"
//				+ "d.pin='"+donor.getPin()+"',"
//				+ "d.address='"+donor.getAddress()+"',"
//				+ "d.city='"+donor.getCity()+"',"
//				+ "d.district='"+donor.getDistrict()+"',"
//				+ "d.height='"+donor.getHeight()+"',"
//				+ "d.bloodgroup='"+donor.getBloodgroup()+"',"
//				+ "d.gender='"+donor.getGender()+"',"
//				+ "d.dob='"+donor.getDob()+"',"
//				+ "d.name='"+donor.getName()+"' where d.id="+donor.getId());
//		tx.commit();
//		s.close();
	}
	
	//checking login validation
	public boolean loginCheck(Donor donor)
	{
		s=sf.openSession();
		boolean userFound = false;
		Query query=s.createQuery(" from Donor d where d.email='"+donor.getEmail()+"' and d.password='"+donor.getPassword()+"'");
//		System.out.println(donor.getEmail());
//		System.out.println(donor.getPassword());
		List<Donor> list=query.list();
		if ((list != null) && (list.size() > 0)) {
			userFound= true;
		}
		s.close();
		return userFound;
	}

	//Check whether the user id already exists
	public boolean isUserExists(Donor donor) {
		s=sf.openSession();
		boolean userExists=false;
		Query query=s.createQuery(" from Donor d where d.email='"+donor.getEmail()+"'");
		List<Donor> list=query.list();
		if ((list != null) && (list.size() > 0)) {
			userExists= true;
		}
		s.close();
		return userExists;
	}
	
	//List Full Details of Donor
	public List<Donor>  donorDetails(Donor donor)
	{
		s=sf.openSession();
		tx=s.beginTransaction();
		Query query=s.createQuery("from Donor d where d.email='"+donor.getEmail()+"' and d.password='"+donor.getPassword()+"'");
		List<Donor> al=query.list();
		tx.commit();
		s.close();
		return al;
	}

	public List<Donor>  searchDonor(Donor donor)
	{
		s=sf.openSession();
		tx=s.beginTransaction();
		Query query=s.createQuery("from Donor d where d.bloodgroup='"+donor.getBloodgroup()+"' and d.district='"+donor.getDistrict()+"'");
		List<Donor> al=query.list();
		tx.commit();
		s.close();
		return al;
	}

	public boolean donorCheck(Donor donor) {
		s=sf.openSession();
		boolean userExists=false;
		Query query=s.createQuery("from Donor d where d.bloodgroup='"+donor.getBloodgroup()+"' and d.district='"+donor.getDistrict()+"'");
		List<Donor> al=query.list();
		if ((al != null) && (al.size() > 0)) {
			userExists= true;
		}
		s.close();
		return userExists;
	}

	
}
	
	

