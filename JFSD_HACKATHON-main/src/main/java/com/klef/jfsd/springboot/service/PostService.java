package com.klef.jfsd.springboot.service;

import java.util.List;
 
import com.klef.jfsd.springboot.model.Post;

public interface PostService 
{
	public String userpost(Post p);
	
	public List<Post> viewallpost();

	public Post ViewpostByID(int id);
	
	public String deleteuser(int pid);

	
}
