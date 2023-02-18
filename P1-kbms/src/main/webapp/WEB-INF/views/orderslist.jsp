<%@page import="com.revature.poms.model.OrderProduct"%>
<%@page import="com.revature.poms.daoImpl.OrderedItemDaoImpl"%>
<%@page import="com.revature.poms.model.Order1"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.revature.poms.daoImpl.OrderDaoImpl"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8" />
<meta content="width=device-width, initial-scale=1.0" name="viewport" />

<title>Order Details</title>
<meta content="" name="description" />
<meta content="" name="keywords" />

<!-- Favicons -->
<link href="assets/img/favicon1.png" rel="icon" />

<!-- Google Fonts -->
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i"
	rel="stylesheet" />

<!-- Vendor CSS Files -->
<link href="assets/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet" />
<link href="assets/vendor/bootstrap-icons/bootstrap-icons.css"
	rel="stylesheet" />
<link href="assets/vendor/boxicons/css/boxicons.min.css"
	rel="stylesheet" />

<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
	integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
	crossorigin="anonymous"></script>
<script type="text/javascript"
	src="https://code.jquery.com/jquery-1.12.3.js"></script>
<script type="text/javascript"
	src="https://cdn.datatables.net/1.10.12/js/jquery.dataTables.min.js"></script>



<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous" />
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"
	integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
	crossorigin="anonymous"></script>

<!-- Template Main CSS File -->
<link href="assets/css/style.css" rel="stylesheet" />

<!-- Table -->
<link rel="Stylesheet"
	href="https://cdn.datatables.net/1.10.12/css/jquery.dataTables.min.css" />
<script type="text/javascript"
	src="https://code.jquery.com/jquery-1.12.3.js"></script>
<script type="text/javascript"
	src="https://cdn.datatables.net/1.10.12/js/jquery.dataTables.min.js"></script>
<!-- <script
      src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
      integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
      crossorigin="anonymous"
    ></script> -->

<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous" />
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"
	integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
	crossorigin="anonymous"></script>
</head>

<body>
	<!-- ======= Header ======= -->
	<header>
		<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
			<div class="container-fluid">
				<a class="navbar-brand" href="home.jsp" style="margin-left: 5%">KBMS</a>
				<button class="navbar-toggler" type="button"
					data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
					aria-controls="navbarSupportedContent" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
			</div>
		</nav>
	</header>

	<main id="main">
		<!-- ======= Breadcrumbs ======= -->
		<!-- <div class="breadcrumbs" data-aos="fade-in">
            <div class="container">
                <h2>Pizza Oven</h2>
            </div>
        </div> -->
		<!-- End Breadcrumbs -->

		<div class="container  px-2"
			style="margin-bottom: 5%; margin-top: 5%;">

			<div class="table-responsive">

				<table id="MyTable" class="table table-striped" cellspacing="0"
					width="100%" style="padding-top: 25px; text-align: center;">
					<ul class="nav nav-tabs">
						<li class="nav-item"><a class="nav-link active"
							aria-current="page" href="#">Order Details</a></li>
					</ul>
					<thead class="table-dark">
						<tr>
							<th>#</th>
							<th>Name</th>
							<th>Email</th>
							<th>Address</th>
							<th>Contact</th>
							<th>Price</th>

							<th>Items</th>
							<!-- 							<th>Edit</th>
<!--  -->
						</tr>
					</thead>
					<tbody>
						<%
						ArrayList<Order1> list = (ArrayList<Order1>) (request.getAttribute("ORDER_DETAIL"));

						for (Order1 order : list) {
							System.out.println(order.getOrderId());
							OrderedItemDaoImpl daoImpl = new OrderedItemDaoImpl(order.getOrderId());
							ArrayList<OrderProduct> impl = (ArrayList<OrderProduct>) daoImpl.getOrderedItem();
							//System.out.println(impl);
						%>
						<tr>
							<td class="id"><%=order.getOrderId()%></td>
							<td class="name"><%=order.getCustomerName()%></td>
							<td class="email"><%=order.getEmail()%></td>
							<td class="address"><%=order.getDeliveryAddress()%></td>
							<td class="contact"><%=order.getCustomerContact()%></td>
							<td class="price"><%=order.getTotalPrice()%></td>
							<td>
								<div class="btn-group">
									<button type="button" class="btn btn-success dropdown-toggle"
										data-toggle="dropdown" aria-haspopup="true"
										aria-expanded="false">Item</button>
									<div class="dropdown-menu">

										<li><a>Mango 380</a></li> <li><a>Apple 100</a></li><li> <a>Tomato 50</a></li> <%-- 	<%
										for (OrderProduct item : impl) {
											//System.out.println(item.getProductName());
										%>
										<a class="dropdown-item" href="#"> <%=item.getProductName() + " " + item.getProductPrice()%><span>&#8377</span>
										</a>
										<%
										}
										%>
										
 --%>
									</div>
								</div>
							</td>
						</tr>
						<%
						}
						%>

					</tbody>
				</table>
			</div>
			<!-- 				---to connect javascript to bootstrapp-->
			-->
			<!-- <script
			src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"
			integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN"
			crossorigin="anonymous"></script>
 -->


		</div>
	</main>

	<!-- Template Main JS File -->
	<script src="assets/js/main.js"></script>
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
		integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"
		integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"
		integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
		crossorigin="anonymous"></script>

	<script>
		$(document)
				.ready(
						function() {
							$("#MyTable")
									.DataTable(
											{
												initComplete : function() {
													this
															.api()
															.columns()
															.every(
																	function() {
																		var column = this;
																		var select = $(
																				'<select><option value=""></option></select>')
																				.appendTo(
																						$(
																								column
																										.footer())
																								.empty())
																				.on(
																						"change",
																						function() {
																							var val = $.fn.dataTable.util
																									.escapeRegex($(
																											this)
																											.val());
																							//to select and search from grid
																							column
																									.search(
																											val ? "^"
																													+ val
																													+ "$"
																													: "",
																											true,
																											false)
																									.draw();
																						});

																		column
																				.data()
																				.unique()
																				.sort()
																				.each(
																						function(
																								d,
																								j) {
																							select
																									.append('<option value="' + d + '">'
																											+ d
																											+ "</option>");
																						});
																	});
												},
											});
						});
	</script>
	<script src="assets/vendor/aos/aos.js"></script>
	<script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	<script src="assets/vendor/glightbox/js/glightbox.min.js"></script>
	<script src="assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
	<script src="assets/vendor/swiper/swiper-bundle.min.js"></script>
</body>


</html>