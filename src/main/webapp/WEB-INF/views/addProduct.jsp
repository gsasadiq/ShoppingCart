<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@include file="/WEB-INF/views/template/header.jsp" %>
 

    <section id="services">
      <div class="container">
          <div class="col-lg-8 col-lg-offset-2 text-center">
            <h2 class="section-heading">Add Product page</h2>
            <p>Please add below information to add the product!!</p>
            <hr class="my-4"><br>
           
          </div >
        </div>
        <div class="container col-md-6 col-md-offset-3">
        	<form:form action="/admin/productInventory/addProduct" method="post" commandName="product">
        		<div class="form-group">
        			<label for="name">Name</label>
        			<form:input path="productName" id="name" cssClass="form-control"/>
        		</div>
        		
        		<div class="form-group">
        			<label for="category">Category</label>
        			<label class="checkbox-inline">
        				<form:radiobutton path="productCategory" id="category" value="iPhone"/>iPhone
        			</label>
        			<label class="checkbox-inline">
        				<form:radiobutton path="productCategory" id="category" value="moto"/>Moto
        			</label>
        			<label class="checkbox-inline">
        				<form:radiobutton path="productCategory" id="category" value="oneplus"/>OnePlus
        			</label>
        			<label class="checkbox-inline">
        				<form:radiobutton path="productCategory" id="category" value="sony"/>Sony
        			</label>
        		</div>
        		
        		<div class="form-group">
        			<label for="description">Description</label>
        			<form:textarea path="productDescription" id="description" cssClass="form-control"/>
        		</div>
        		
        		<div class="form-group">
        			<label for="price">Price</label>
        			<form:input path="productPrice" id="price" cssClass="form-control"/>
        		</div>
        		
        		<div class="form-group">
        			<label for="condition">Condition</label>
        			<label class="check-box-inline">
        				<form:radiobutton path="productCondition" id="condition" value="new"/>New Arrival
        			</label>
        			<label class="check-box-inline">
        				<form:radiobutton path="productCondition" id="condition" value="used"/>Used
        			</label>
     			</div>
     			
     			<div class="form-group">
        			<label for="status">Status</label>
        			<label class="check-box-inline">
        				<form:radiobutton path="productStatus" id="status" value="active"/>Active
        			</label>
        			<label class="check-box-inline">
        				<form:radiobutton path="productStatus" id="status" value="inactive"/>InActive
        			</label>
     			</div>
     			<div class="form-group">
        			<label for="unitInStock">unitInStock</label>
        			<form:input path="unitInStock" id="unitInStock" cssClass="form-control"/>
        		</div>
        		<div class="form-group">
        			<label for="manufacturer">Manufacturer</label>
        			<form:input path="productManufacturer" id="manufacturer" cssClass="form-control"/>
        		</div><br>
        		
        		<div class="col-lg-8 col-lg-offset-2 text-center">
        			<input type="submit" value="submit" class="btn btn-success"/>
        			<a href="<c:url value="/admin/productInventory"/>" class="btn btn-primary" >Cancel</a>
        		</div>
        		
        	</form:form>
        </div>
   </section>
   <div class="clearfix">
   </div>
   <%@include file="/WEB-INF/views/template/footer.jsp" %>