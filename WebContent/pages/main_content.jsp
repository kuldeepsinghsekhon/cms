<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
  <section id="contentSection">
    <div class="row">
      <div class="col-lg-8 col-md-8 col-sm-8">
       <c:forEach items="${categories}" var="category">
         <div class="fashion_technology_area">
            <div class="fashion">
              <div class="single_post_content">
                <h2><span><c:out value="${category.name}"></c:out></span></h2>
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
          </div>      
       </c:forEach>
        </div>
      <div class="col-lg-4 col-md-4 col-sm-4">
        <aside class="right_content">
         <%@include file="popularpost.jsp" %>
          <%@include file="tagscomment.jsp" %>
           </aside>
      </div>
    </div>
  </section>
  