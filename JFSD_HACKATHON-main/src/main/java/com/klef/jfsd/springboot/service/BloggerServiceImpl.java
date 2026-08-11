package com.klef.jfsd.springboot.service;


import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.Blogger;
import com.klef.jfsd.springboot.repository.BloggerRepository; 


@Service
public class BloggerServiceImpl implements BloggerService
{

  @Autowired
  private BloggerRepository bloggerRepository;
  
  
  @Override
  public String userregister(Blogger b) {
    bloggerRepository.save(b);
    return "User Added Successfully";
  }

  @Override
  public String updateuser(Blogger b) {
    Blogger blo=bloggerRepository.findById(b.getId()).get();
    
    blo.setName(b.getName());
    blo.setDateofbirth(b.getDateofbirth());
    blo.setEmail(b.getEmail());
    blo.setPassword(b.getPassword());
    blo.setLocation(b.getLocation());
    blo.setContact(b.getContact());
   
    bloggerRepository.save(blo);
    return "User Update Successfully";
  }

  @Override
  public Blogger viewuserbyid(int uid) {
    Optional<Blogger> obj=bloggerRepository.findById(uid);
    if(obj.isPresent())
         {
           Blogger blo = obj.get();
           
           return blo;
         }
         else
         {
           return null;
         }
  }

  @Override
  public Blogger checkuserlogin(String email, String pwd) {
    return bloggerRepository.checkuserlogin(email, pwd);

  }

}