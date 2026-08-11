package com.klef.jfsd.springboot.service;

import java.util.List;

import com.klef.jfsd.springboot.model.Admin;
import com.klef.jfsd.springboot.model.Blogger; 
 
public interface AdminService 
{
	public List<Blogger> viewallusers();
	public Blogger viewuserbyid(int uid);
	public String deleteuser(int uid);
	public Admin checkadminlogin(String uname,String pwd);
	 
	public long userscount(); //count(*) 
	
	public int updatestatus(int uid,boolean status);
}
