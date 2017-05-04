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
@WebServlet("/admin/category")
public class CategoryController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	Service postService= new Service();
   
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CategoryController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String forward="//pages//add_category.jsp";
		String action;
		
		 action=request.getParameter("action");
		 if(action==null){
			 action="";
		 }
		
		if(action.equalsIgnoreCase("delete")){
			int id =Integer.parseInt(request.getParameter("id"));
			postService.delete(id);
		}else if(action.equalsIgnoreCase("edit")){
			forward="//pages//edit_category.jsp";
		}else{
			
			
			
		}
		List<Category> tags=postService.allCategory();
		List <Post> posts= postService.allPostOrderd(); 
		request.setAttribute("posts",posts);
		List <Post> lposts= postService.allLatestPost(); 
		request.setAttribute("lposts",lposts);
		request.setAttribute("tags", tags);
		List <Menu> menus= postService.allMenu(); 
		request.setAttribute("menus",menus);
		List <Category> categories= postService.allCategory(); 
		request.setAttribute("categories",categories);
		request.getRequestDispatcher(forward).forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String  name=request.getParameter("name");
		String detail=request.getParameter("detail");
		Category category=new Category();
		category.setDetail(detail);
		category.setName(name);
		postService.addCategory(category);
		response.sendRedirect("category");
	}

}
