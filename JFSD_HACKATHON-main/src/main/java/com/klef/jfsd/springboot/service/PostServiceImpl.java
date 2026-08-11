package com.klef.jfsd.springboot.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.Post; 
import com.klef.jfsd.springboot.repository.PostRepository;

@Service
public class PostServiceImpl implements PostService
{

	 @Autowired
	  private PostRepository postRepository;
	  
	
	@Override
	public String userpost(Post p) {
		postRepository.save(p);
	    return "User Post Added Successfully";
	}

	@Override
	public List<Post> viewallpost() {
		return postRepository.findAll();
	}

	@Override
	public Post ViewpostByID(int id) {	
		  return postRepository.findById(id).get();
	}

	@Override
	  public String deleteuser(int pid) {
	    
	      Optional<Post> obj =  postRepository.findById(pid);
	        
	        String msg = null;
	        
	        if(obj.isPresent())
	        {
	          Post p=obj.get();
	          
	          postRepository.delete(p);
	          
	          msg = "Post Deleted Successfully";
	        }
	        else
	        {
	          msg = "Post Not Found";
	        }
	        
	        return msg;
	  
	  }

}
