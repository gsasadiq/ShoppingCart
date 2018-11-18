<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@include file="/WEB-INF/views/template/header.jsp" %>

    <section id="services">
      <div class="container">
        <div class="row">
          <div class="col-lg-12 text-center">
            <h2 class="section-heading">Product Inventory Page!</h2>
            <p>Product Inventory Page for Admin</p>
            <hr class="my-4">
          </div>
        </div>
      </div>
      <div class="container">
      <table class="table  table-striped table-hover table-bordered">
	      <thead>
	      <tr>
	      	<th>Photo Thumb</th>
	      	<th>Product Name</th>
	      	<th>Category</th>
	      	<th>Condition</th>
	      	<th>Price</th>
	      	<th></th>
	      </tr>
	      </thead>
	      <c:forEach items="${products}" var="product">
	      	<tr>
	      	 <td><img src="#" alt="image"/></td>
	      	 <td>${product.productName}</td>
	      	 <td>${product.productCategory}</td>
	      	 <td>${product.productCondition}</td>
	      	 <td>${product.productPrice} INR</td>
	      	 <td>
	      	 	<a href="<c:url value="/viewProduct/${product.productId}"/>">
	      	 	<span class="glyphicon glyphicon-info-sign"></span>
	      	 	</a>
	      	 </td>
	      	</tr>
	      </c:forEach>
      </table>
      <a href="<c:url value="/admin/productInventory/addProduct"/>" class="btn btn-success">
      Add Product
      </a>
      </div>
      </section>
<%@include file="/WEB-INF/views/template/footer.jsp" %>
