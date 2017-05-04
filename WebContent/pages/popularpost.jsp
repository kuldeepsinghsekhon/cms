 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
 <div class="single_sidebar">
            <h2><span>Popular Post</span></h2>
            <ul class="spost_nav">
             <c:forEach items="${posts}" var="post">
              <li>
                <div class="media wow fadeInDown"> <a href="pages/single_page.html" class="media-left"> <img alt="y" src="images/post_img2.jpg"> </a>
                  <div class="media-body"> <a href=page?action=<c:out value="${post.id}"/> class="catg_title"><c:out value="${post.name}"></c:out></a> 
                  <p><c:out   escapeXml="false" value="${fn:substring(post.detail,0,70)}"></c:out></p>
                  </div>
                </div>
              </li>
              </c:forEach>
            </ul>
          </div>