 <footer id="footer">
    <div class="footer_top">
      <div class="row">
        <div class="col-lg-4 col-md-4 col-sm-4">
          <div class="footer_widget wow fadeInLeftBig">
            <h2>Quick Links</h2>
             <ul class="tag_nav">
             <c:forEach var="menu" items="${menus}">
         <li><a href='<c:out value="${menu.href}"></c:out>'><c:out value="${menu.linkName}"></c:out></a></li>
        </c:forEach>
        </ul>
          </div>
        </div>
        <div class="col-lg-4 col-md-4 col-sm-4">
          <div class="footer_widget wow fadeInDown">
            <h2>Tag</h2>
            <ul class="tag_nav">
            <c:forEach var="tag" items="${tags}">
         <li><a href='category?action=<c:out value='${tag.id}'></c:out>'><c:out value="${tag.name}"></c:out></a></li>
        </c:forEach>
            </ul>
          </div>
        </div>
        <div class="col-lg-4 col-md-4 col-sm-4">
          <div class="footer_widget wow fadeInRightBig">
            <h2>Contact</h2>
            <p>Kuldeep singh sekhon</p>
            <address>
            10 New Sant AveNue G.T Road City Amritsar State Punjab , Pin: 143001 India Phone: 9803242155
            </address>
          </div>
        </div>
      </div>
    </div>
    <div class="footer_bottom">
      <p class="copyright">Copyright &copy; 2017 <a href="#">Kuldeep singh sekhon</a></p>
      <p class="developer">Developed By Kuldeep Singh</p>
    </div>
  </footer>