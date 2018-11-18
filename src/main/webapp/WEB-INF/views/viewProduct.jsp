<%@include file="/WEB-INF/views/template/header.jsp" %>
 

    <section id="services">
      <div class="container">
        <div class="row">
          <div class="col-lg-12 text-center">
            <h2 class="section-heading">View Products!</h2>
            <p>Here is the detail information of the product!!</p>
            <hr class="my-4">
          </div>
        </div>
      </div>
      
      <div class="container">
      	<div class="row">
      		<div class="col-md-5">
      			<img alt="image" src="G://ecommerce/images/7.jpg" style="width: 100%; height: 300px;"/>      	
      		</div>
      		<div class="col-md-5">
      			<h3>Product name : ${product.productName}</h3>
      			<p>Product description :${product.productDescription}</p>
      			<p>Manufacturer :${product.productManufacturer}</p>
      			<p>Category :${product.productCategory}</p>
      			<p>Price :<strong>${product.productPrice} INR</strong></p>
      		</div>
      	</div>
      </div>
   </section>
   <%@include file="/WEB-INF/views/template/footer.jsp" %>