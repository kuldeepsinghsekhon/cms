 <%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
 <div class="latest_post">
          <h2><span>Latest post</span></h2>
          <div class="latest_post_container">
            <div id="prev-button"><i class="fa fa-chevron-up"></i></div>
            <ul class="latest_postnav">
               <c:forEach items="${lposts}" var="lpost">
              <li>
                <div class="media wow fadeInDown"> <a href="pages/single_page.html" class="media-left"> <img alt="y" src="images/post_img2.jpg"> </a>
                  <div class="media-body">  <a href=page?action=<c:out value="${lpost.id}"/> class="catg_title"><c:out value="${lpost.name}"></c:out></a>
                  <p><c:out  escapeXml="false" value="${fn:substring(lpost.detail,0,70)}"></c:out></p>
                   </div>
                </div>
              </li>
              </c:forEach>

              
            </ul>
            <div id="next-button"><i class="fa  fa-chevron-down"></i></div>
          </div>
        </div>
      