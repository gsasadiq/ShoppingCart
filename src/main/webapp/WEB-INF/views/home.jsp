<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@include file="/WEB-INF/views/template/home_header.jsp" %>
    <header class="masthead text-center text-white d-flex">
      <div class="container my-auto">
        <div class="row">
          <div class="col-lg-10 mx-auto">
            <h1 class="text-uppercase">
              <strong>Welcome to Online Shopping Store</strong>
            </h1>
            <hr>
          </div>
          <div class="col-lg-8 mx-auto">
            <p class="text-faded mb-5">Online Shopping Store is for all kinds of products.We also free delivery all kinds of our products as your ordering!!</p>
            <a class="btn btn-primary btn-xl js-scroll-trigger" href="#about">See what's we have!</a>
          </div>
        </div>
      </div>
    </header>

    <section class="bg-primary" id="about">
      <div class="container">
        <div class="row">
          <div class="col-lg-8 mx-auto text-center">
            <h2 class="section-heading text-white">We've got what you need!</h2>
            <hr class="light my-4">
            <p class="text-faded mb-4">Online Shopping Store is for all kinds of products.We also free delivery all kinds of our products as your ordering!</p>
            <a class="btn btn-light btn-xl js-scroll-trigger" href="#services">Go to our products</a>
          </div>
        </div>
      </div>
    </section>

    <section id="services">
      <div class="container">
        <div class="row">
          <div class="col-lg-12 text-center">
            <h2 class="section-heading">All Our Products!</h2>
            <p>Checkout all our awesome products available here for you!!</p>
            <hr class="my-4">
          </div>
        </div>
      </div>
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
      </section>
      <section>
      <div class="container">
        <div class="row">
          <div class="col-lg-3 col-md-6 text-center">
            <div class="service-box mt-5 mx-auto">
              <i class="fas fa-4x fa-gem text-primary mb-3 sr-icon-1"></i>
              <h3 class="mb-3">Sturdy Templates</h3>
              <p class="text-muted mb-0">Our templates are updated regularly so they don't break.</p>
            </div>
          </div>
          <div class="col-lg-3 col-md-6 text-center">
            <div class="service-box mt-5 mx-auto">
              <i class="fas fa-4x fa-paper-plane text-primary mb-3 sr-icon-2"></i>
              <h3 class="mb-3">Ready to Ship</h3>
              <p class="text-muted mb-0">You can use this theme as is, or you can make changes!</p>
            </div>
          </div>
          <div class="col-lg-3 col-md-6 text-center">
            <div class="service-box mt-5 mx-auto">
              <i class="fas fa-4x fa-code text-primary mb-3 sr-icon-3"></i>
              <h3 class="mb-3">Up to Date</h3>
              <p class="text-muted mb-0">We update dependencies to keep things fresh.</p>
            </div>
          </div>
          <div class="col-lg-3 col-md-6 text-center">
            <div class="service-box mt-5 mx-auto">
              <i class="fas fa-4x fa-heart text-primary mb-3 sr-icon-4"></i>
              <h3 class="mb-3">Made with Love</h3>
              <p class="text-muted mb-0">You have to make your websites with love these days!</p>
            </div>
          </div>
        </div>
      </div>
    </section>

    <section class="p-0" id="portfolio">
      <div class="container-fluid p-0">
        <div class="row no-gutters popup-gallery">
          <div class="col-lg-4 col-sm-6">
            <a class="portfolio-box" href="<c:url value="/resources/img/portfolio/fullsize/1.jpg"/>">
              <img class="img-fluid" src="<c:url value="/resources/img/portfolio/thumbnails/1.jpg"/>" alt="">
              <div class="portfolio-box-caption">
                <div class="portfolio-box-caption-content">
                  <div class="project-category text-faded">
                    Category
                  </div>
                  <div class="project-name">
                    Project Name
                  </div>
                </div>
              </div>
            </a>
          </div>
          <div class="col-lg-4 col-sm-6">
            <a class="portfolio-box" href="<c:url value="/resources/img/portfolio/fullsize/2.jpg"/>">
              <img class="img-fluid" src="<c:url value="/resources/img/portfolio/thumbnails/2.jpg"/>" alt="">
              <div class="portfolio-box-caption">
                <div class="portfolio-box-caption-content">
                  <div class="project-category text-faded">
                    Category
                  </div>
                  <div class="project-name">
                    Project Name
                  </div>
                </div>
              </div>
            </a>
          </div>
          <div class="col-lg-4 col-sm-6">
            <a class="portfolio-box" href="<c:url value="/resources/img/portfolio/fullsize/3.jpg"/>">
              <img class="img-fluid" src="<c:url value="/resources/img/portfolio/thumbnails/3.jpg"/>" alt="">
              <div class="portfolio-box-caption">
                <div class="portfolio-box-caption-content">
                  <div class="project-category text-faded">
                    Category
                  </div>
                  <div class="project-name">
                    Project Name
                  </div>
                </div>
              </div>
            </a>
          </div>
          <div class="col-lg-4 col-sm-6">
            <a class="portfolio-box" href="<c:url value="/resources/img/portfolio/fullsize/4.jpg"/>">
              <img class="img-fluid" src="<c:url value="/resources/img/portfolio/thumbnails/4.jpg"/>" alt="">
              <div class="portfolio-box-caption">
                <div class="portfolio-box-caption-content">
                  <div class="project-category text-faded">
                    Category
                  </div>
                  <div class="project-name">
                    Project Name
                  </div>
                </div>
              </div>
            </a>
          </div>
          <div class="col-lg-4 col-sm-6">
            <a class="portfolio-box" href="<c:url value="/resources/img/portfolio/fullsize/5.jpg"/>">
              <img class="img-fluid" src="<c:url value="/resources/img/portfolio/thumbnails/5.jpg"/>" alt="">
              <div class="portfolio-box-caption">
                <div class="portfolio-box-caption-content">
                  <div class="project-category text-faded">
                    Category
                  </div>
                  <div class="project-name">
                    Project Name
                  </div>
                </div>
              </div>
            </a>
          </div>
          <div class="col-lg-4 col-sm-6">
            <a class="portfolio-box" href="<c:url value="/resources/img/portfolio/fullsize/6.jpg"/>">
              <img class="img-fluid" src="<c:url value="/resources/img/portfolio/thumbnails/6.jpg"/>" alt="">
              <div class="portfolio-box-caption">
                <div class="portfolio-box-caption-content">
                  <div class="project-category text-faded">
                    Category
                  </div>
                  <div class="project-name">
                    Project Name
                  </div>
                </div>
              </div>
            </a>
          </div>
        </div>
      </div>
    </section>

<!-- <aside class="bg-dark">
<div class="container text-center">
	<div class="call-to-action">
		<h2 class="mb-4">Any Product which you feel interested in??</h2>
		<a class="btn btn-light btn-xl sr-button" href="http://startbootstrap.com/template-overviews/creative/">ORDER NOW!</a>
	</div>
</div>
</aside> -->
    <section class="bg-dark text-white">
      <div class="container text-center">
        <h2 class="mb-4">Any Product which you feel interested in??</h2>
        <a class="btn btn-light btn-xl sr-button" href="#">ORDER NOW!</a>
      </div>
    </section>
<%@include file="/WEB-INF/views/template/footer.jsp" %>
