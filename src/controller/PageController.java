package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cms.Category;
import cms.Menu;
import cms.Post;
import services.Service;

/**
 * Servlet implementation class Category
 */
@WebServlet("/page")
public class PageController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	Service postService= new Service();
   
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PageController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String forward="//pages//page.jsp";
		String action;
		
		 action=request.getParameter("action");
		 if(action==null){
			 action="";
		 }
		int id=Integer.parseInt(action);
		
		Post post= postService.findPostById(id); 
		request.setAttribute("post",post);
		List<Category> tags=postService.allCategory();
		List <Post> posts= postService.allPostOrderd(); 
		request.setAttribute("posts",posts);
		List <Post> lposts= postService.allLatestPost(); 
		request.setAttribute("lposts",lposts);
		request.setAttribute("tags", tags);
		List <Menu> menus= postService.allMenu(); 
		request.setAttribute("menus",menus);
		request.getRequestDispatcher(forward).forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
