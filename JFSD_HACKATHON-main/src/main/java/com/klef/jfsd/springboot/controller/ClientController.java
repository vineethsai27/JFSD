package com.klef.jfsd.springboot.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;
import java.sql.Blob;
import javax.sql.rowset.serial.SerialException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.klef.jfsd.springboot.model.Admin;
import com.klef.jfsd.springboot.model.Blogger;
import com.klef.jfsd.springboot.model.Feedback;
import com.klef.jfsd.springboot.model.Post;
import com.klef.jfsd.springboot.service.AdminService;
import com.klef.jfsd.springboot.service.BloggerService;
import com.klef.jfsd.springboot.service.FeedbackService;
import com.klef.jfsd.springboot.service.PostService;
import org.springframework.http.MediaType;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

import org.springframework.web.multipart.MultipartFile;

@Controller
public class ClientController 
{
	@Autowired
	 private BloggerService bloggerService;
	
	@Autowired
	 private AdminService adminService;
	
	@Autowired
	private PostService postService;
	
	@Autowired
	private FeedbackService feedbackService;
	
	@GetMapping("/")
	public String main()
	{
		return "index";
	}
	
	@GetMapping("userreg")
	public ModelAndView userreg()
	{
		ModelAndView mv = new ModelAndView();
	    mv.setViewName("userreg");
	    return mv;
	}
	


	
	@PostMapping ("insertuser")
	public ModelAndView insertaction(HttpServletRequest request)
	{
		ModelAndView mv=new ModelAndView();
		String msg=null;
		
		try 
		{
			String name = request.getParameter("name");
			String gender = request.getParameter("gender");
			String dob = request.getParameter("dob"); 
			String email = request.getParameter("email");
			String pwd = request.getParameter("pwd");
			String location = request.getParameter("location");
			String contact = request.getParameter("contact");
			
			Blogger user = new Blogger();
		       user.setName(name);
		       user.setGender(gender);
		       user.setDateofbirth(dob); 
		       user.setEmail(email);
		       user.setPassword(pwd);
		       user.setLocation(location);
		       user.setContact(contact);
		       user.setActive(true);
		       
		      msg = bloggerService.userregister(user);
		      
		      mv.setViewName("displaymsg");
		      mv.addObject("message",msg);
		}
		catch (Exception e) 
		{
			mv.setViewName("displayerror");
			
			msg=e.getMessage();
			
			mv.addObject("message",msg);
		}
		return mv;
	}
	

	@GetMapping("userlogin")
	public ModelAndView userlogin()
	{
		ModelAndView mv = new ModelAndView();
	    mv.setViewName("userlogin");
	    return mv;
	}
	
	@PostMapping("checkuserlogin")
	public ModelAndView checkuserlogin(HttpServletRequest request)
	{
		ModelAndView mv=new ModelAndView();
		String email=request.getParameter("email");
		String pwd=request.getParameter("pwd");
		
		Blogger user=bloggerService.checkuserlogin(email, pwd);
		
		if(user!=null)
		{
			//session start
			HttpSession session=request.getSession();
			
			session.setAttribute("uid", user.getId()); //eid is  a session variable
			session.setAttribute("uname", user.getName()); //ename is a sesssion variable
			
			//session end
			mv.setViewName("userhome");
		}
		else
		{
			mv.setViewName("userlogin");
			mv.addObject("message", "Login Failed");
		}
		return mv;
	}
	

	@GetMapping("adminlogin") 
	public ModelAndView adminlogin()
	{
	     ModelAndView mv = new ModelAndView();
	     mv.setViewName("adminlogin");
	     return mv;
	}
	


	@PostMapping("checkadminlogin")
	public ModelAndView checkadminlogin(HttpServletRequest request)
	{
		String uname= request.getParameter("uname");
		String pwd=request.getParameter("pwd");
		
		Admin a = adminService.checkadminlogin(uname, pwd);
		
		ModelAndView mv =new ModelAndView();
		if(a!=null)
		{
			mv.setViewName("adminhome");  
			
		}
		else
		{
			mv.setViewName("adminlogin");
			mv.addObject("message", "Login Failed");
		}
		return mv;
	}
	
	@GetMapping("adminhome")
	   public ModelAndView adminhome()
	   {
		long userscount=adminService.userscount(); 
	     ModelAndView mv = new ModelAndView();
	     mv.setViewName("adminhome");
	     mv.addObject("ucount",userscount); 
	     return mv;
	   }
	
	@GetMapping("viewallusers")
	public ModelAndView viewallusers()
	{
		ModelAndView mv=new ModelAndView();
		mv.setViewName("viewallusers");
		
		List<Blogger> userlist =adminService.viewallusers();
		mv.addObject("userdata", userlist);
		return mv;
	}
	
	
	@GetMapping("view")
	   public ModelAndView viewempdemo(@RequestParam("id") int uid)
	   {
	     Blogger user = adminService.viewuserbyid(uid);
	     ModelAndView mv = new ModelAndView();
	     mv.setViewName("viewuserbyid");
	     mv.addObject("user", user);
	     return mv;
	   }
	@GetMapping("deleteuser")
    public ModelAndView deleteuser()
    {
      ModelAndView mv = new ModelAndView();
      mv.setViewName("deleteuser");
      
      List<Blogger> userlist =  adminService.viewallusers();
      
      mv.addObject("userdata", userlist);
      
      return mv;
    }
	
	@GetMapping("logout")
	   public ModelAndView userlogout()
	   {
		   ModelAndView mv= new ModelAndView();
		   mv.setViewName("logout");
		   return mv;
	   }


	@GetMapping("delete/{id}")
	public String deleteaction(@PathVariable("id") int uid )
	{
		adminService.deleteuser(uid);
		return "redirect:/deleteuser";
	}
	
	@GetMapping("contactus")
	public ModelAndView contactus()
	  {
	    ModelAndView mv = new ModelAndView();
	    mv.setViewName("contactus");
	    return mv;
	  }
	
	@GetMapping("contactus1")
	public ModelAndView contactus1()
	  {
	    ModelAndView mv = new ModelAndView();
	    mv.setViewName("contactus1");
	    return mv;
	  }
	
	
	

	@GetMapping("userhome")
	public ModelAndView userhome()
	{
		ModelAndView mv=new ModelAndView();
		mv.setViewName("userhome");
		return mv;
	}
	@GetMapping("aboutus")
	public ModelAndView aboutus() {
	    ModelAndView mv = new ModelAndView();
	    mv.setViewName("aboutus");
	    return mv;
	}
	
	

	
	@GetMapping("updateprofile")
	   public ModelAndView updateprofile(HttpServletRequest request)
	   {
	     ModelAndView mv = new ModelAndView();
	     
	     HttpSession session = request.getSession();
	     
	     mv.setViewName("updateprofile");
	     
	     mv.addObject("uid", session.getAttribute("uid"));
	     mv.addObject("uname", session.getAttribute("uname"));
	     
	     int id = (int) session.getAttribute("uid");
	     
	     Blogger user = bloggerService.viewuserbyid(id);
	     
	     mv.addObject("user", user);
	     
	     return mv;
	   }
	   
	   @PostMapping("update")
	   public ModelAndView updateaction(HttpServletRequest request)
	   {
	     String msg = null;
	     
	     ModelAndView mv = new ModelAndView();
	     
	       HttpSession session = request.getSession();
	     
	     mv.addObject("uid", session.getAttribute("uid"));
	     mv.addObject("uname", session.getAttribute("uname"));
	     
	     int id = (int) session.getAttribute("uid");
	     
	    try
	    {
	      String name = request.getParameter("name");
	      String dob = request.getParameter("dob"); 
	      String email = request.getParameter("email");
	      String pwd = request.getParameter("pwd");
	      String location = request.getParameter("location");
	      String contact = request.getParameter("contact");
	      
	      Blogger user = new Blogger();
	       user.setId(id);
	       user.setName(name);
	       user.setDateofbirth(dob); 
	       user.setEmail(email);
	       user.setPassword(pwd);
	       user.setLocation(location);
	       user.setContact(contact);
	       
	       
	       msg = bloggerService.updateuser(user);
	       
	       mv.setViewName("userlogin");
	       mv.addObject("message",msg);
	      
	    }
	    catch(Exception e)
	    {
	      msg = e.getMessage();
	      
	      mv.setViewName("updateerror");
	       mv.addObject("message",msg);
	    }
	     
	    
	     return mv;

	   }
	   @GetMapping("updatestatus")
	     public ModelAndView updatestatus()
	     {
	       ModelAndView mv = new ModelAndView();
	       mv.setViewName("updatestatus");
	       
	       List<Blogger> userlist = adminService.viewallusers();
	       mv.addObject("userdata", userlist);
	       
	       return mv;
	     }
	  
	  
	     @GetMapping("setstatus")
	     public ModelAndView setstatusaction(@RequestParam("id") int uid, @RequestParam("status") boolean status)
	     {
	       int n = adminService.updatestatus(uid, status);
	         
	         ModelAndView mv = new ModelAndView();
	         mv.setViewName("updatestatus");
	         
	         List<Blogger> userlist = adminService.viewallusers();
	         mv.addObject("userdata", userlist);
	         
	         if(n>0)
	         {
	           mv.addObject("message", "Status Updated Successfully");
	         }
	         else
	         {
	           mv.addObject("message", "Failed to Update Status");
	         }
	         return mv;
	     }
	
	     @GetMapping("createpost")
	 	public ModelAndView createpost() {
	 	    ModelAndView mv = new ModelAndView();
	 	    mv.setViewName("createpost");
	 	    return mv;
	 	   
	 	}

	     @PostMapping("insertpostaction")
	     public ModelAndView insertpostaction(HttpServletRequest request,@RequestParam("image") MultipartFile file) throws IOException, SerialException, SQLException
 {
	         ModelAndView mv = new ModelAndView();
	         String msg = null;

	         try {
	             String title = request.getParameter("title");
		     String category = request.getParameter("category");
		  byte[] bytes = file.getBytes();
		  Blob blob = new javax.sql.rowset.serial.SerialBlob(bytes);
		  
	             String context = request.getParameter("postContent");  
	             Post post = new Post();
	             post.setTitle(title);
	             post.setCategory(category);
	             post.setImage(blob);
	             post.setContext(context);


	             msg = postService.userpost(post);

	             mv.setViewName("userallposts"); 
	 	 		
	 	 		List<Post> postlist =postService.viewallpost();
	 	 		mv.addObject("postdata", postlist);
	         } catch (Exception e) {
	             mv.setViewName("displayerror");
	             msg = e.getMessage();
	             mv.addObject("message", msg);
	         }
	         return mv;
	     }
	     
	     
	     @GetMapping("userallposts")
	 	public ModelAndView userallposts()
	 	{
	 		ModelAndView mv=new ModelAndView();
	 		mv.setViewName("userallposts");
	 		
	 		List<Post> postlist =postService.viewallpost();
	 		mv.addObject("postdata", postlist);
	 		return mv;
	 	}
	     
	     @GetMapping("displayimage")
	     public ResponseEntity<byte[]> displayprodimagedemo(@RequestParam("id") int id) throws IOException, SQLException
	     {
	       Post post =  postService.ViewpostByID(id);
	       byte [] imageBytes = null;
	       imageBytes = post.getImage().getBytes(1,(int) post.getImage().length());

	       return ResponseEntity.ok().contentType(MediaType.IMAGE_JPEG).body(imageBytes);
	     }
	     
	     
	     @GetMapping("adminallposts")
	     public ModelAndView adminallposts()
	     {
	       ModelAndView mv=new ModelAndView();
	       mv.setViewName("adminallposts");
	       
	       List<Post> postlist =postService.viewallpost();
	       mv.addObject("postdata", postlist);
	       return mv;
	     }
	     
	     @GetMapping("recentposts")
		 	public ModelAndView recentposts()
		 	{
		 		ModelAndView mv=new ModelAndView();
		 		mv.setViewName("recentposts");
		 		
		 		List<Post> postlist =postService.viewallpost();
		 		mv.addObject("postdata", postlist);
		 		return mv;
		 	}


	     @GetMapping("tips")
		 	public ModelAndView tips() {
		 	    ModelAndView mv = new ModelAndView();
		 	    mv.setViewName("tips");
		 	    return mv;
		 	   
		 	}
	     
	     
	     @PostMapping("feedbackregister")
	     public ModelAndView processfeedback(HttpServletRequest request) {

	       ModelAndView mv=new ModelAndView();
	       String msg=null;
	       
	       try 
	       {
	         String feedback = request.getParameter("feedback");
	         
	         Feedback user = new Feedback();
	              user.setfeedbackContent(feedback);
	              
	              
	             msg = feedbackService.feedbackregister(user);
	             
	             mv.setViewName("displayfeedback");
	             mv.addObject("message",msg);
	       }
	       catch (Exception e) 
	       {
	         mv.setViewName("displayerror");
	         
	         msg=e.getMessage();
	         
	         mv.addObject("message",msg);
	       }
	       return mv;
	     }
	     

	     @GetMapping("deletepost")
	      public ModelAndView deletepost()
	      {
	        ModelAndView mv = new ModelAndView();
	        mv.setViewName("deletepost");
	        
	        List<Post> postlist = postService.viewallpost();
	        
	        mv.addObject("postdata", postlist);
	        
	        return mv;
	      }
	     
	     @GetMapping("deletep/{id}")
	    public String deletepostaction(@PathVariable("id") int pid )
	    {
	      postService.deleteuser(pid);
	      return "redirect:/deletepost";
	    }
	     
	     @GetMapping("viewFeedback")
	 	public ModelAndView viewFeedback()
	 	{
	 		ModelAndView mv=new ModelAndView();
	 		mv.setViewName("viewFeedback");
	 		
	 		List<Feedback> feedlist =feedbackService.viewallfeedback();  
	 		mv.addObject("feeddata", feedlist);
	 		return mv;
	 	}
	     
}
