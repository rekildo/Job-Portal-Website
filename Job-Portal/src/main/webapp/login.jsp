<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Page</title>
<%@ include file="all_component/all_css.jsp"%>
<style>
.background-radial-gradient {
	background-color: hsl(218, 41%, 15%);
	background-image: radial-gradient(650px circle at 0% 0%, hsl(218, 41%, 35%)
		15%, hsl(218, 41%, 30%) 35%, hsl(218, 41%, 20%) 75%,
		hsl(218, 41%, 19%) 80%, transparent 100%),
		radial-gradient(1250px circle at 100% 100%, hsl(218, 41%, 45%) 15%,
		hsl(218, 41%, 30%) 35%, hsl(218, 41%, 20%) 75%, hsl(218, 41%, 19%) 80%,
		transparent 100%);
}

#radius-shape-1 {
	height: 220px;
	width: 220px;
	top: -60px;
	left: -130px;
	background: radial-gradient(#44006b, #ad1fff);
	overflow: hidden;
}

#radius-shape-2 {
	border-radius: 38% 62% 63% 37%/70% 33% 67% 30%;
	bottom: -60px;
	right: -110px;
	width: 300px;
	height: 300px;
	background: radial-gradient(#44006b, #ad1fff);
	overflow: hidden;
}

.bg-glass {
	background-color: hsla(0, 0%, 100%, 0.9) !important;
	backdrop-filter: saturate(200%) blur(25px);
}
</style>

</head>
<body>
	<%@include file="all_component/navbar.jsp"%>

	<!-- Section: Design Block -->
	<section class="background-radial-gradient overflow-hidden">


		<div
			class="container px-4 py-5 px-md-5 text-center text-lg-start my-5">
			<div class="row gx-lg-5 align-items-center mb-5">
				<div class="col-lg-6 mb-5 mb-lg-0" style="z-index: 10">
					<h1 class="my-5 display-5 fw-bold ls-tight"
						style="color: hsl(218, 81%, 95%)">
						Welcome to Job Portal.<br /> <span style="color: hsl(218, 81%, 75%)">
							 Please Login</span>
					</h1>
					<p class="mb-4 opacity-70" style="color: hsl(218, 81%, 85%)">
						Your premier destination for career
						advancement and employment opportunities. At JobLink, we
						understand the significance of finding the right job to match your
						skills and aspirations.</p>
				</div>

				<div class="col-lg-6 mb-5 mb-lg-0 position-relative">
					<div id="radius-shape-1"
						class="position-absolute rounded-circle shadow-5-strong"></div>
					<div id="radius-shape-2" class="position-absolute shadow-5-strong"></div>

					<div class="card bg-glass">
						<div class="card-body px-4 py-5 px-md-5">

							<!-- Form starts hererere #### -->
							<form action="login" method="post">


								<!-- LOGO -->
								<div class="form-outline mb-3">
									<label class="form-label font-weight-bold" for="form3Example3"><h1>Login</h1>
									</label>


								</div>

								<c:if test="${not empty succMsg }">
									<h4 class="text-center text-success">${succMsg }</h4>
									<c:remove var="succMsg" />
								</c:if>


								<!-- Email input -->
								<div class="form-outline mb-4">
									<label class="form-label" for="form3Example3">Email
										address</label> <input type="email" required="required"
										id="exampleInputEmail" name="email" class="form-control" />

								</div>

								<!-- Password input -->
								<div class="form-outline mb-4">
									<label class="form-label" for="form3Example4">Password</label>
									<input type="password" required="required"
										id="exampleInputPassword" name="password" class="form-control" />

								</div>



								<!-- Submit button -->
								<button type="submit" class="btn btn-primary btn-block mb-4">
									Login</button>

								<!-- Register buttons -->
								<div class="text-center">
									<p>or sign up with:</p>
									<button type="button" class="btn btn-link btn-floating mx-1">
										<i class="fab fa-facebook-f"></i>
									</button>

									<button type="button" class="btn btn-link btn-floating mx-1">
										<i class="fab fa-google"></i>
									</button>

									<button type="button" class="btn btn-link btn-floating mx-1">
										<i class="fab fa-twitter"></i>
									</button>

									<button type="button" class="btn btn-link btn-floating mx-1">
										<i class="fab fa-github"></i>
									</button>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Section: Design Block -->



</body>
</html>