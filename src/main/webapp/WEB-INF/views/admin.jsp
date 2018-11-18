<%@include file="/WEB-INF/views/template/header.jsp" %>
 

    <section id="services">
      <div class="container">
        <div class="row">
          <div class="col-lg-12 text-center">
            <h2 class="section-heading">Administrator</h2>
            <p>This is Administrator page.!!</p>
            <hr class="my-4"><br>
            <h3>
            	<a href="<c:url value="/admin/productInventory"/>" class="btn btn-lg btn-success">
            		Product Inventory
            	</a>
            </h3>
            <p>Here authorized admin can  view,check & modify the product inventory</p>
          </div>
        </div>
      </div>
   </section>
   <%@include file="/WEB-INF/views/template/footer.jsp" %>