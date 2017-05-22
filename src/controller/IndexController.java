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
 * Servlet implementation class IndexController
 */
@WebServlet("/index")
public class IndexController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       Service postService= new Service();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public IndexController() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		List<Category> categories=postService.allCategoriesWithPost();
		List<Category> tags=postService.allCategory();
		List <Post> posts= postService.allPostOrderd(); 
		request.setAttribute("posts",posts);
		List <Post> lposts= postService.allLatestPost(); 
		request.setAttribute("lposts",lposts);
		request.setAttribute("tags", tags);
		List <Menu> menus= postService.allMenu(); 
		request.setAttribute("menus",menus);
		request.setAttribute("categories", categories);
		request.getRequestDispatcher("\\pages\\index.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
