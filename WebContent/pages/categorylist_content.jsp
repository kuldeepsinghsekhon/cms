<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<section id="contentSection">
    <div class="row">
      <div class="col-lg-8 col-md-8 col-sm-8">
        <div class="left_content">
          <div class="single_page">

           
            <h1><c:out value="${category.name}"></c:out></h1>
            <div class="post_commentbox"> <a href="#"><i class="fa fa-user"></i>admin</a>   </div>
            <div class="single_page_content"> 
              <div class="single_post_content">
              <ul class="spost_nav">
              <c:forEach items="${category.posts}"  var="post">

                  <li>
                    <div class="media wow fadeInDown"> <a href="pages/single_page.html" class="media-left"> <img alt="" src="images/post_img2.jpg"> </a>
                      <div class="media-body"> <a href=page?action=<c:out value="${post.id}"/> class="catg_title"><c:out value="${post.name}"/></a> 
                       <p><c:out  escapeXml="false"  value="${fn:substring(post.detail,0,100)}"></c:out></p>
                      </div>
                    </div>
                  </li>
                 
                      </c:forEach>
              </ul>
            </div>
            </div>
            <div class="social_link">
              <ul class="sociallink_nav">
                <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                <li><a href="#"><i class="fa fa-pinterest"></i></a></li>
              </ul>
            </div>

          </div>
        </div>
      </div>
      <nav class="nav-slit"> <a class="prev" href="#"> <span class="icon-wrap"><i class="fa fa-angle-left"></i></span>
        <div>
          <h3>City Lights</h3>
          <img src="../images/post_img1.jpg" alt=""/> </div>
        </a> <a class="next" href="#"> <span class="icon-wrap"><i class="fa fa-angle-right"></i></span>
        <div>
          <h3>Street Hills</h3>
          <img src="../images/post_img1.jpg" alt=""/> </div>
        </a> </nav>
      <div class="col-lg-4 col-md-4 col-sm-4">
 <aside class="right_content">
         <%@include file="popularpost.jsp" %>
          <%@include file="tagscomment.jsp" %>
           </aside>
      </div>
    </div>
  </section>
  