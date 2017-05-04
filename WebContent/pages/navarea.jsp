  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 <section id="navArea">
    <nav class="navbar navbar-inverse" role="navigation">
      <div class="navbar-header">
        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar"> <span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </button>
      </div>
      <div id="navbar" class="navbar-collapse collapse">
        <ul class="nav navbar-nav main_nav">
          <li class="active"><a href="index"><span class="fa fa-home desktop-home"></span><span class="mobile-show">Home</span></a></li>
        <c:forEach var="menu" items="${menus}">
         <li><a href='<c:out value="${menu.href}"></c:out>'><c:out value="${menu.linkName}"></c:out></a></li>
        </c:forEach>
       
          <li><a href="contact.html">Contact Us</a></li>
          
        </ul>
      </div>
    </nav>
  </section>