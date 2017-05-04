package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cms.Category;
import cms.Post;
import cms.PostService;

/**
 * Servlet implementation class PostController
 */
@WebServlet("/admin/posts")
public class PostController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	PostService postService= new PostService();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PostController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String forward="//pages//post_post.jsp";
		String action;
		
		 action=request.getParameter("action");
		 if(action==null){
			 action="";
		 }
		
		if(action.equalsIgnoreCase("delete")){
			int id =Integer.parseInt(request.getParameter("id"));
			postService.deletePost(id);
		}else if(action.equalsIgnoreCase("edit")){
			forward="//pages//edit_post.jsp";
		}else{
			
			
			
		}
		List <Post> posts= postService.allPosts(); 
		request.setAttribute("posts",posts);
		List <Category> categories= postService.allCategory(); 
		request.setAttribute("categories",categories);
		
		request.getRequestDispatcher(forward).forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String  name=request.getParameter("name");
		int  category_id=Integer.parseInt(request.getParameter("category"));
		String detail=request.getParameter("detail");
		Post post=new Post();
		post.setDetail(detail);
		//post.setShortDetail(detail);
		post.setName(name);
		int user_id=1;
		postService.addPost(post,category_id,user_id);
		response.sendRedirect("posts");
	}

}
