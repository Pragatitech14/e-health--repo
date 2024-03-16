<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Register.healthID</title>
<!-- Font Awesome -->
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.8.2/css/all.css">
<!-- Google Fonts -->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap">
<!-- Bootstrap core CSS -->
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.0/css/bootstrap.min.css"
	rel="stylesheet">
<!-- Material Design Bootstrap -->
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.19.0/css/mdb.min.css"
	rel="stylesheet">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<script language="Javascript" src="js/jquery.js"></script>
<link rel="stylesheet" type="text/css" href="css/Regcss2.css">
</head>
<body>

	<div class="entirebody">
		<div class="logo">
			<img src="images//logos1.png">
		</div>
		<div class="healthlogo">
			<img src="images//healthidlogo.PNG">
		</div>
		<div class="topnav" id="myTopnav">
			<a href="index.html">Home</a> <a href="login.jsp">Login</a> <a
				href="registration.jsp" class="active">Generate ID</a> <a
				href="#contactofpage">Facility</a> <a href="#contactofpage">About</a> <a
				href="#contactofpage" onclick="showContact()" id="con">Contact</a> <a
				href="javascript:void(0);" class="icon" onclick="myFunction()">
				<i class="fa fa-bars"></i>
			</a>
		</div>
		<div class="movingtext">
			<marquee
				style="background-image: linear-gradient(rgb(18, 18, 98), black, rgb(32, 32, 65)); margin-top: 10px;">
				<h5>
					<b>Health ID - Key to your digital healthcare journey</b> | As you
					are aware, PM Modi recently announced the National Digital Health
					Mission. Under this program, citizens will get a unique Health ID
					which can be used anytime to get a complete medical history of the
					patient. Generate your Health ID today itself 																																					by using your Aadhar
					card or your mobile number.
				</h5>
			</marquee>
		</div>


		<div class="w3-container w3-cursive"
			style="text-align: center; background: linear-gradient(green, rgb(59, 179, 35), green); text-align: center; display: block;">
			<table style="width: 100%;">
				<tr>
					<td>
						<div class="cardlies">
							<p class="w3-xlarge" style="color: red;">
								<i>"Card NEVER Lies!"</i>
							</p>
						</div>
					</td>
					<td>
						<p class="w3-large ml6">
							<span class="text-wrapper"> <span class="letters"
								style="font-size: 25px; font-weight: bolder; color: #fff; -webkit-text-stroke: 2px black; float: right;">Register
									Now!!</span>
							</span>

						</p>
					</td>
					<td><a href="guidelines.pdf" target="_blank"><Button
								type="button"
								style="float: right; background: rgb(255, 0, 0); width: 150px; height: fit-content;">
								Guidelines</Button></a>
						<div class="needhelp">
							<span style="float: right; margin-top: 20px; font-size: 20px;">
								Need Help? &nbsp;&nbsp; </span>
						</div></td>
				</tr>
			</table>
			<script
				src="https://cdnjs.cloudflare.com/ajax/libs/animejs/2.0.2/anime.min.js"></script>
		</div>


		<div class="regform">
			<!--  <h2>Responsive Topnav Example</h2>
            <p>Resize the browser window to see how it works.</p>
          -->




			<div class="boxed" id="FullRegister">
			
				<form action="AddDoctorRegistration" name="drregister" method="post" enctype="multipart/form-data" id="drregister" >
					<section>
					<table align="center">

						<tr>
							<td><label for="fname"><b>First Name</b></label> <input
								type="text" id="fname" name="firstname" placeholder="First Name"
								minlength="3" maxlength="20" required onblur="ValidateFName()"></td>
							<td><label for="mname"><b>Middle Name</b></label> <input
								type="text" placeholder="Middle Name" name="mname" id="mname"
								minlength="2" maxlength="20" required onblur="ValidateMName()"></td>
							<td><label for="sname"><b>Last Name</b></label> <input
								type="text" placeholder="Surname" name="sname" id="sname"
								minlength="2" maxlength="20" required onblur="ValidateLName()"></td>
						</tr>
						<tr>
							<td colspan="3"><label for="birthday"><b>Date of
										Birth:</b></label> <input type="date" id="birthday" name="birthday"
								max="2021-21-05" style="color: black" required
								onblur="ValidateDate()"></td>
						</tr>

						<tr>
							<td><label><b>Gender </b></label>
								<p>
									<br>
									<input type="radio" id="male" name="gender" value="male"
										checked> <label for="male" style="font-size: 20px;">Male</label>
								</p></td>
							<td><label style="visibility: hidden"><b>Gender
								</b></label><br>
							<input type="radio" id="female" name="gender" value="female">
								<label style="font-size: 20px;">Female</label></td>
							<td><label style="visibility: hidden"><b>Gender
								</b></label><br> <input type="radio" id="other" name="gender"
								value="other"> <label style="font-size: 20px;">Other</label></td>
						</tr>

						<tr>
							<td colspan="3"><label for="state"><b>State</b></label> <select
								id="listBox" name="state" onchange='selct_district(this.value)'
								class="form-control"
								style="width: 100%; height: 20%; color: black; font-family: Verdana; font-size: 18px; padding: 12px 20px; margin: 8px 0; display: inline-block; border: 1px solid black; box-sizing: border-box; border-radius: 8px;"
								required></select></td>
						</tr>
						<tr>
							<td colspan="3"><label for="state"><b>City</b></label> <select
								name="city" id='secondlist' class="form-control"
								style="width: 100%; height: 20%; color: black; font-family: Verdana; font-size: 18px; padding: 12px 20px; margin: 8px 0; display: inline-block; border: 1px solid black; box-sizing: border-box; border-radius: 8px;"
								required></select></td>
						</tr>
						<tr>
							<td colspan="3"><label for="email"><b>Email ID</b></label> <input
								type="text" placeholder="Email ID" name="email" id="email"
								minlength="10" maxlength="25" required onblur="ValidateEmail()"></td>
						</tr>

						<tr>
							<td colspan="3"><label for="mobno"><b>Mobile No</b></label>
								<input type="number" placeholder="Enter Mobile No" name="mobno"
								id="mobno" minlength="10" maxlength="10" required
								onblur="ValidateMobile()"></td>
						</tr>
						
						<tr>
							<td colspan="3"><label for="medlicense"><b>Medical License No.</b></label>
								<input type="text" placeholder="Enter Medical License No." name="medicallicense"
								id="medicallicense" required"></td>
						</tr>
						
						<tr>
							<td colspan="3"><label for="specialization"><b>Specialization</b></label>
								<input type="text" placeholder="Specilaization" name="specialization"
								id="specialization" required"></td>
						</tr>
						
						<tr>
							<td colspan="3"><label for="affiliation"><b>Clinic/Hospital Affiliation</b></label>
								<input type="text" placeholder="Clinic/Hospital" name="affiliation"
								id="affiliation" required"></td>
						</tr>
						
							
						<tr>
							<td colspan="3"><label for="experience"><b>Years of Experience</b></label>
								<input type="number" placeholder="Experience" name="experience"
								id="experience" required"></td>
						</tr>
						
						<tr>
							<td colspan="3"><label for="degree"><b>Degree</b></label>
								<input type="text" placeholder="Degree" name="degree"
								id="degree" required"></td>
						</tr>
						<tr>
						<div class="form-row">
						
						<td colspan="3">		<label for="degree"><b>Degree Certificate</b></label>
								<div class="value">
									<input class="input--style-6" type="file" name="image"
										id="image" style="width: 100%; height: 20%; background-color: white; color: black; font-family: Verdana; font-size: 18px; padding: 12px 20px; margin: 8px 0; display: inline-block; border: 1px solid black; box-sizing: border-box; border-radius: 8px;" required>
								</div></td>
							</div>
			</tr>
						
						<tr>
							<td colspan="3"><label for="myInput"><b>Password</b></label>

								<input type="password" placeholder="Enter Password" id="myInput"
								name="pass" minlength="8" maxlength="16" required
								onblur="ValidatePassword()"> <input type="checkbox"
								onclick="ShowPassword()">
								<p style="color: white; font-size: 16px; font-weight: bolder;">Show
									Password</p></td>
						</tr>
						
		
						
						
					</table>
					
					

					<center style="font-size: 18px;">
						By clicking our Register Button you agree to our <br> <a
							href="#" style="color: rgb(0, 132, 255);">terms and
							conditions</a>
					</center>
					<button type="submit" value="Register">Register</button>
					<div style="background-color: rgba(0, 0, 0, .5); padding: 2px;">
						<h3>
							<span>Already Registered? <a href="login.jsp"
								style="color: rgb(0, 132, 255);">Log in</a> Yourself
							</span>
						</h3>
					</div>


					</section>
				</form>
			</div>
		</div>
	</div>






	</footer>
	</div>
	<script src="js/index.js"></script>
</body>
</html>