
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
  <%@page import="cms.Category"%>
<%@page import="java.util.List"%>
 
  <section id="contentSection">
    <div class="row">
      <div class="col-lg-8 col-md-8 col-sm-8">
      
        <div class="left_content">
          <div class="contact_area">
            <h2>Add New Category</h2>
            <p></p>
            <form action="category" method="post" class="contact_form">
              <input class="form-control" name="name" type="text" placeholder="Category Name*">
             
              <textarea class="form-control" name="detail" cols="30" rows="10" placeholder="Detail about category*"></textarea>
              <input type="submit" value="Post Category">
            </form>
          </div>
        </div>
        
        <div class="left_content">
          <div class="contact_area">
            <h2> Categories</h2>
            
            <table class="table table-responsive table-hover table-striped">
            <tr><th>ID</th><th>Name</th><th>Image</th><th >Edit</th><th>Delete</th></tr>
            <c:forEach  var="category" items="${categories}">
            <tr><td><c:out value="${category.id}"/></td><td><c:out value="${category.name}"/>
            </td><td><c:out value="${category.name}"/></td>
            
            <td><a  class="btn btn-info" href=category?action=edit&id=<c:out value="${category.id}"/>>Edit</a></td>
            <td><a class="btn btn-danger" href=category?action=delete&id=<c:out value="${category.id}"/>>Delete</a></td>
            </tr>
            </c:forEach>
            </table>
          </div>
        </div>
        
        
      </div>
      
      
      
      
      <div class="col-lg-4 col-md-4 col-sm-4">
        <aside class="right_content">
          <div class="single_sidebar">
            <h2><span>Popular Post</span></h2>
            <ul class="spost_nav">
              <li>
                <div class="media wow fadeInDown"> <a href="single_page.html" class="media-left"> <img alt="" src="../images/post_img1.jpg"> </a>
                  <div class="media-body"> <a href="single_page.html" class="catg_title"> Aliquam malesuada diam eget turpis varius 1</a> </div>
                </div>
              </li>
              <li>
                <div class="media wow fadeInDown"> <a href="single_page.html" class="media-left"> <img alt="" src="../images/post_img2.jpg"> </a>
                  <div class="media-body"> <a href="single_page.html" class="catg_title"> Aliquam malesuada diam eget turpis varius 2</a> </div>
                </div>
              </li>
              <li>
                <div class="media wow fadeInDown"> <a href="single_page.html" class="media-left"> <img alt="" src="../images/post_img1.jpg"> </a>
                  <div class="media-body"> <a href="single_page.html" class="catg_title"> Aliquam malesuada diam eget turpis varius 3</a> </div>
                </div>
              </li>
              <li>
                <div class="media wow fadeInDown"> <a href="single_page.html" class="media-left"> <img alt="" src="../images/post_img2.jpg"> </a>
                  <div class="media-body"> <a href="single_page.html" class="catg_title"> Aliquam malesuada diam eget turpis varius 4</a> </div>
                </div>
              </li>
            </ul>
          </div>
        </aside>
      </div>
    </div>
  </section>