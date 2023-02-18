<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Kitchen Basket</title>

<!--to connect html css to bootstrap-->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD"
	crossorigin="anonymous">

<!---for background container color-->
<style>
.container1 {
	height: 100vh;
	width: 100%;
	background-color: rgb(247, 245, 245);
}
</style>
</head>

<body>

	<div class="container1">

		<!---navigation or navbar/menu -->
		<nav class="navbar navbar-expand-lg bg-body-dark navbar-dark bg-dark">
			<h5 style="color: white; margin-left: 5%">KBMS</h5>
			<div class="container-fluid" style="background-color: warning">
				<!-- 	<a class="navbar-brand fw-bolder fs-1" href="index.html"><img
					src="img/logo_kb.png" alt="" width="80px"
					style="border-radius: 50%;"></a>
 -->
				<!--3lines button /offcanvas button whene pop down in mobile view-->
				<button class="navbar-toggler" type="button"
					data-bs-toggle="collapse" data-bs-target="#navbarScroll"
					aria-controls="navbarScroll" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
				<!--to connect another page or toggel for info-->
				<div class="collapse navbar-collapse" id="navbarScroll">
					<!-- <ul class="navbar-nav me-auto my-2 my-lg-0 navbar-nav-scroll"
						style="-bs-scroll-height: 100px;">
						<li class="nav-item"><a class="nav-link active"
							aria-current="page" href="#">About-us</a></li>
					</ul>
 -->
					<!--to jump to antoher login page-->
					<li><a href="getDetails" style="margin-left: 1000%">
							<button class="btn btn-outline-light" type="submit">Order
								Details</button>
					</a></li>

				</div>
			</div>
		</nav>

		<!-- container for comments /welcome text -->
		<div class="container-fluid">
			<div class="row" style="height: 400px;">
				<div class="col-md-2 col-sm-2 "></div>

				<section id="book-a-table" class="book-a-table">
					<div class="container" data-aos="fade-up">

						<div class="section-title">
							<h1>
								Buy Fresh & Organic Fruits......
								</h2>
								<p>
									& Also Order Vegetables
									</h>
								</p>
								<hr>
						</div>


						<form action="successorder" method="post" role="form"
							data-aos="fade-up" data-aos-delay="100" style="margin-top: 10%">
							<div  style="margin-top: 2%;display: flex">

								<div class="form-container" style="width: 80%" >
									<div class="col-lg-4 form-group mt-4" style="width: 50%"> 
										<input type="text" name="name" class="form-control bgcolor"
											id="name" placeholder="Your Name">
									</div>
									<br>
									<div class="col-lg-4 form-group mt-4">
										<input type="email" class="form-control bgcolor" name="email"
											id="email" placeholder="Your Email">
									</div>
									<br>
									<div class="col-lg-4 form-group mt-4">
										<input type="text" class="form-control bgcolor" name="phone"
											id="phone" placeholder="Your Phone">
									</div>
									<br>
									<div class="col-lg-4 form-group mt-4">
										<input type="text" name="address" class="form-control bgcolor"
											id="address" placeholder="Delivery Address">

									</div>
								</div>

								<div class="dropdown-container" style="width: 50%">
									<div style="width: 90%;">
										<div class="col-lg-6 mt-6" style="border-width: 10%">
											<div class="dropdown ">
												<button
													class="btn  dropdown-toggle dropdown-toggle-split form-group bgcolor"
													type="button" id="dropdownMenu2" data-bs-toggle="dropdown"
													aria-expanded="false"
													style="width: 100%; text-transform: uppercase;">Choose
													Item</button>
												<div name="dropdown-menu" name="drop-down"
													style="max-height: 300px; overflow-y: auto;">
													<div class="form-check">

														<div class="dropdown-item">
															<input class="form-check-input" type="checkbox"
																id="inlineCheckbox1" value="Apple 100" name="2" />Apple
															100<span>>&#8377</span>
														</div>
														<div class="dropdown-item">
															<input class="form-check-input" type="checkbox"
																id="inlineCheckbox3" value="Orange 50 " name="2" />Orange
															50<span>>&#8377</span>
														</div>
														<div class="dropdown-item">
															<input class="form-check-input" type="checkbox"
																id="inlineCheckbox3" value="Mango 380 " name="2" />Mango
															380<span>>&#8377</span>
														</div>
														<div class="dropdown-item">
															<input class="form-check-input" type="checkbox"
																id="inlineCheckbox3" value="Grapes 100" name="2" />Grapes
															100<span>&#8377</span>

														</div>
														<div class="dropdown-item">
															<input class="form-check-input" type="checkbox"
																id="inlineCheckbox3" value="Potato 20" name="2" />Potato
															20<span>&#8377</span>
														</div>
														<div class="dropdown-item" style="margin-bottom: auto">
															<input class="form-check-input" type="checkbox"
																id="inlineCheckbox3" value="Carrot 40" name="2" />Carrot
															80<span>&#8377</span>
														</div>
														<div class="dropdown-item" style="margin-bottom: auto">
															<input class="form-check-input" type="checkbox"
																id="inlineCheckbox3" value="Tomato 50" name="2" />Tomato
															50 <span>&#8377</span>
														</div>
														<div class="dropdown-item" style="margin-bottom: auto">
															<input class="form-check-input" type="checkbox"
																id="inlineCheckbox3" value="Onion 25" name="2" />Onion
															25 <span>&#8377</span>
														</div>
														<div class="dropdown-item" style="margin-bottom: auto">
															<input class="form-check-input" type="checkbox"
																id="inlineCheckbox3" value="Cumin 40" name="2" />Cumin
															40<span>&#8377</span>
														</div>
														<div class="dropdown-item" style="margin-bottom: auto">
															<input class="form-check-input" type="checkbox"
																id="inlineCheckbox3" value="Fennel 50" name="2" />Fennel
															50<span>&#8377</span>
														</div>
														<div class="dropdown-item" style="margin-bottom: auto">
															<input class="form-check-input" type="checkbox"
																id="inlineCheckbox3" value="Cloves 25" name="2" />Cloves
															25<span>&#8377</span>
														</div>
														<div class="dropdown-item" style="margin-bottom: auto">
															<input class="form-check-input" type="checkbox"
																id="inlineCheckbox3" value="Saffron 150" name="2" />Saffron
															150 <span>&#8377</span>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
					</div>
					<div class="form-group mt-4">
						<!-- <textarea class="form-control bgcolor" name="message" rows="5"
									placeholder=" FeedBack about our Products"></textarea>
								 -->
						<div class="validate"></div>
					</div>

					<div class="text-center" style="border-bottom-left-radius: 5">
						<button class="myButton" type="submit"
							style="  color: white;
  border-color: black;
    border-bottom-color: black;
  border-bottom-color: black;
  background-color: green;
  border-radius: 10px;">Book
							Order</button>
					</div>
					</form>
			</div>
			</section>
		</div>

	</div>

	<!---to connect javascript to bootstrapp-->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"
		integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.min.js"
		integrity="sha384-mQ93GR66B00ZXjt0YO5KlohRA5SY2XofN4zfuZxLkoj1gXtW8ANNCe9d5Y3eG5eD"
		crossorigin="anonymous"></script>
	</div>
</body>

</html>