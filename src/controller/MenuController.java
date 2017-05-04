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
import services.Service;

/**
 * Servlet implementation class Category
 */
@WebServlet("/admin/menu")
public class MenuController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	Service postService= new Service();
   
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MenuController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String forward="//pages//add_menu.jsp";
		String action;
		
		 action=request.getParameter("action");
		 if(action==null){
			 action="";
		 }
		
		if(action.equalsIgnoreCase("delete")){
			int id =Integer.parseInt(request.getParameter("id"));
			postService.deleteMenu(id);
		}else if(action.equalsIgnoreCase("edit")){
			forward="//pages//edit_menu.jsp";
		}else{
			
			
			
		}
		List <Menu> menus= postService.allMenu(); 
		request.setAttribute("menus",menus);
		request.getRequestDispatcher(forward).forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String  name=request.getParameter("name");
		String link_href=request.getParameter("link_href");
		String link_level=request.getParameter("link_level");
		String link_parent=request.getParameter("link_parent");
		Menu menu=new Menu();
	
		menu.setLinkName(name);
		menu.setHref(link_href);
		postService.addMenu(menu);
		response.sendRedirect("menu");
	}

}
