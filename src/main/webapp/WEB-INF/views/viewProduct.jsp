<%@page import="com.teamsankya.shoppingcart.model.ProductDTO"%>
<%@page import="java.util.List"%>
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
      		<% List<ProductDTO> beans=(List<ProductDTO>) request.getAttribute("msg");   %>
<div class="row">
<% for(ProductDTO bean : beans){ %>
<div class="column">
<table>

		<h3>Product name :<%=bean.getProductName()%></h3>
      			<p>Manufacturer :<%=bean.getProductManufacturer()%></p>
      			<p>Price :<strong><%=bean.getProductPrice()%> INR</strong></p>
      			<p>Category :<%=bean.getProductCategory() %></p>
      			<p>Product Id :<%=bean.getProductId() %></p>
      			</div>
      			<%
      			} 
      			%>
      			</table>
      		</div>
      	</div>
      </div>
   </section>
   <%@include file="/WEB-INF/views/template/footer.jsp" %>