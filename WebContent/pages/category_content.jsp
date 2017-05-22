
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
  <%@page import="cms.Category"%>
<%@page import="java.util.List"%>
 
  <section id="contentSection">
    <div class="row">
      <div class="col-lg-12 col-md-12 col-sm-12">
      
        <div class="left_content">
          <div class="contact_area">
            <h2>Add New Category</h2>
            <p></p>
            <form action="category" method="post" class="contact_form">
              <input class="form-control" name="name" type="text" placeholder="Category Name*">
             
               <input class="form-control" name="detail"  placeholder="Detail about category*">
               <br>
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
    </div>
  </section>