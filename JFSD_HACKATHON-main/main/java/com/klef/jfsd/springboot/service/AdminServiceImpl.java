package com.klef.jfsd.springboot.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.Admin;
import com.klef.jfsd.springboot.model.Blogger;
import com.klef.jfsd.springboot.repository.AdminRepository;
import com.klef.jfsd.springboot.repository.BloggerRepository;


@Service
public class AdminServiceImpl implements AdminService
{
  @Autowired
  private AdminRepository adminRepository;
  
  @Autowired
  private BloggerRepository bloggerRepository;

@Override
public List<Blogger> viewallusers() {
	
	return bloggerRepository.findAll();
}

@Override
public Blogger viewuserbyid(int uid) {
 
	    Optional<Blogger> obj =  bloggerRepository.findById(uid);
	        
	        if(obj.isPresent())
	        {
	          Blogger user = obj.get();
	          
	          return user;
	        }
	        else
	        {
	          return null;
	        }
	    

}

 

@Override
public Admin checkadminlogin(String uname, String pwd) {
	return adminRepository.checkadminlogin(uname, pwd);
}

@Override
public long userscount() {
	return bloggerRepository.count();
}

@Override
public int updatestatus(int uid, boolean status) {
	 
	    return adminRepository.updatestatus(uid, status);
	  }


@Override
public String deleteuser(int uid) {
	Optional<Blogger> obj =  bloggerRepository.findById(uid);
    
    String msg = null;
    
    if(obj.isPresent())
    {
      Blogger user = obj.get();
      
      bloggerRepository.delete(user);
      
      msg = "Blogger Deleted Successfully";
    }
    else
    {
      msg = "Blogger Not Found";
    }
    
    return msg;
}
 


}