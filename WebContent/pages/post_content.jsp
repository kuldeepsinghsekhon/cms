
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
  <%@page import="cms.Category"%>
  <%@page import="cms.Post"%>
<%@page import="java.util.List"%>
 
  <section id="contentSection">
    <div class="row">
      <div class="col-lg-8 col-md-8 col-sm-8">
      
        <div class="left_content">
          <div class="contact_area">
            <h2>Add New Post</h2>
            <p></p>
            <form action="posts" method="post" class="contact_form">
              <input class="form-control" name="name" type="text" placeholder="Post Title*">
              <Select class="form-control" name="category" type="text" placeholder="Category Name*">
              <c:forEach var="category" items="${categories}">
              <option value=<c:out value="${category.id}"/> ><c:out value="${category.name}"/></option>
              </c:forEach>
              
             </Select>
             <br>
              <textarea class="form-control" name="detail" cols="30" rows="10" placeholder="Detail about category*"></textarea>
                <br>
              <input type="submit" value="Submit Post">
            </form>
          </div>
        </div>
        
        <div class="left_content">
          <div class="contact_area">
            <h2> Posts</h2>
            
            <table class="table table-responsive table-hover table-striped">
            <tr><th>ID</th><th>Name</th><th>detail</th><th >Edit</th><th>Delete</th></tr>
            <c:forEach  var="post" items="${posts}">
            <tr><td><c:out value="${post.id}"/></td><td><c:out value="${post.name}"/></td><td><c:out value="${post.shortDetail}"/></td>
            <td><a  class="btn btn-info" href=posts?action=edit&id=<c:out value="${post.id}"/>>Edit</a></td>
            <td><a class="btn btn-danger" href=posts?action=delete&id=<c:out value="${post.id}"/>>Delete</a></td>
            </tr>
            </c:forEach>
            </table>
          </div>
        </div>
        
        
      </div>
      
      
      
      
     
    </div>
  </section>