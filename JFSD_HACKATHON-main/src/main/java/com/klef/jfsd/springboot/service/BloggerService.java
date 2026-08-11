package com.klef.jfsd.springboot.service;

import com.klef.jfsd.springboot.model.Blogger;

public interface BloggerService 
{

  
  public String userregister(Blogger b);
  public String updateuser(Blogger b);
  public Blogger viewuserbyid(int uid);
  public Blogger checkuserlogin(String email,String pwd);
  
}