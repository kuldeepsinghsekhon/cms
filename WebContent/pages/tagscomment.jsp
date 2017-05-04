 <div class="single_sidebar">
            <ul class="nav nav-tabs" role="tablist">
              <li role="presentation" class="active"><a href="#category" aria-controls="home" role="tab" data-toggle="tab">Category</a></li>
                </ul>
            <div class="tab-content">
              <div role="tabpanel" class="tab-pane active" id="category">
                <ul>
                  <c:forEach items="${tags}" var="tag">
                  <li class="cat-item"><a href='category?action=<c:out value="${tag.id}"></c:out>'><c:out value="${tag.name}"></c:out></a></li>
                  </c:forEach>
                </ul>
              </div>
              
            </div>
          </div>
