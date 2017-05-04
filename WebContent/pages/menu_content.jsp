
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
            <h2>Add New Menu Link</h2>
            <p></p>
            <form action="menu" method="post" class="contact_form">
              <input class="form-control" name="name" type="text" placeholder="Menu anchor Name*">
              <input class="form-control" name="link_href" type="text" placeholder="Menu Link href*">
              
               <input type="submit" value="Post Menu Link">
            </form>
          </div>
        </div>
        
        <div class="left_content">
          <div class="contact_area">
            <h2> Menu Links</h2>
            
            <table class="table table-responsive table-hover table-striped">
            <tr><th>ID</th><th>Name</th><th>Link Href</th><th >Edit</th><th>Delete</th></tr>
            <c:forEach  var="menu" items="${menus}">
            <tr><td><c:out value="${menu.id}"/></td><td><c:out value="${menu.linkName}"/>
            </td><td><c:out value="${menu.href}"/></td>
            
            <td><a  class="btn btn-info" href=menu?action=edit&id=<c:out value="${menu.id}"/>>Edit</a></td>
            <td><a class="btn btn-danger" href=menu?action=delete&id=<c:out value="${menu.id}"/>>Delete</a></td>
            </tr>
            </c:forEach>
            </table>
          </div>
        </div>
        
        
      </div>
      
      
      
      
      <div class="col-lg-4 col-md-4 col-sm-4">
       
      </div>
    </div>
  </section>