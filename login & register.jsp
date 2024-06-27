<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login & Register</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.20.0/jquery.validate.min.js"></script>
<link rel="stylesheet" href="style1.css" />
</head>
<body>
<script>
jQuery.validator.addMethod("checkemail", function(value, element) {
	return /^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/.test(value) || /^[0-9]{10}$/.test(value);
	}, "Please enter the email format as abc@gmail.com");
jQuery(document).ready(function($){
$("#login").validate({
rules:{
	name:{
	required: true
},

pw: {
    required: true,
    minlength: 6
}

},

messages:{
    name:{
    required:"Please enter the name."
},

pw: {
    required: "Please enter the password.",
    minlength: "Please enter the password greater than or equal to  6."
}

}
});
});

</script> 
<style>
	.error{
			color: red;
			font-size:0.9rem;
			}
			#msg{
			background: red;
			color: black;
			border: 1px solid red;
			width: 100%;
			font-weight: bold;
			font-size: 1.5rem;
			padding: 10px;
	        position: center;
	        text-align: center;
			}
</style>
<script>

jQuery.validator.addMethod("checkemail", function(value, element) {
	return /^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/.test(value) || /^[0-9]{10}$/.test(value);
         }, "Please enter the email format as abc@gmail.com");
    jQuery(document).ready(function($){
	$("#signup").validate({
	rules:{
		name :{
			required : true
		},
		
		email : {
			required : true,
			checkemail : true
		},
		phone : {
			required : true,
			minlength : 10
		},
		pwd : {
			required : true,
			minlength : 6
		},
		cp : {
			required : true,
			minlength : 6,
			equalTo : "#pwd"
		}	
	},
	messages : {
		name : {
			required : "Please Enter The Name"
			},
		
		email : {
			required : "Please Enter The Email",
			checkemail : "Please Enter valid Email"
		},
		phone : {
			required : "Please Enter The Phone",
			minlength : "The Number should have length equal to 10"
		},
		pwd : {
			required : "Please Enter The Password",
			minlength : "The password should have length more than 6"
		},
		cp : {
			required : "Please Enter The Confirm Password",
			minlength : "The password should have length more than 6",
			equalTo : "The password should match"
		}
	}
	});
});
</script> 
<style>
	.error{
			color: red;
			font-size:0.9rem;
			}
			#msg{
			background: red;
			color: black;
			border: 1px solid red;
			width: 100%;
			font-weight: bold;
			font-size: 1.5rem;
			padding: 10px;
			position: center;
			text-align: center;
			}
	.footer {
  background: #88bdbc;
}
  .footer .credit {
  text-align: center;
  border-top: 0.1rem solid #222;
  color: #fff;
  padding: 2rem;
  padding-top: 2.5rem;
  margin-top: 1rem;
  font-size: 2rem;
}
</style>
        <header class="header" >
      <a href="#" class="logo">Kanasu</a>

      <nav class="navbar"  >
        <a href="index.jsp"  >home</a>
        
        <a href="login & register.jsp" >Login</a>
      </nav>

      <div id="menu-bars" class="fas fa-bars"></div>
    </header>
     
        
<div class="hero">
     <div class="form-box" style="height:610px">
     <%
		if (request.getAttribute("status") != null) {
		%>
		<div id="msg" >
			<%=request.getAttribute("status")%></div>
		<%
		}
		%>
         <div class="button-box">
             <div id="btn"></div>
             <button type="button" class="toggle-btn" onclick="login()"> LogIn</button>
             <button type="button" class="toggle-btn" onclick="register()"> Register</button>
         </div>
             <div class="social-icons">
                 <img src="images/fb.png">
                 <img src="images/tw.png">
                 <img src="images/gp.png">
             </div>
            
             <form method = "post" id="login"  action = "register" class="input-group"><br></br>
                 <input type="text" name="name" class="input-field" placeholder="User Id" >
                 <input type="text" name="pass" class="input-field" placeholder="Enter Password" ><br></br>
                 <a href="ForgotPassword.jsp">Forgot password?</a><br></br>
                 <button type="submit" name="login1" class="submit-btn" >Log In</button>
             </form>
             
             <form method="post" action="register" id="signup" class="input-group">
                 <input type="text" name="name" class="input-field" placeholder="User Id" >
                 <input type="email"name="email" class="input-field" placeholder="Email Id" >
                 <input type="number"name="phone" class="input-field" placeholder="Phone No" >
                 <input type="text" name="pwd" id="pwd" class="input-field" placeholder="Enter Password" >
                 <input type="text" name="cp" class="input-field" placeholder="Confirm  Password" >
                 <button type="submit" name="register1" class="submit-btn" >Register</button>
            </form>
     </div>
 </div>
 
 <script>
    var x = document.getElementById("login");
    var y = document.getElementById("signup");
    var z = document.getElementById("btn");
    function register(){
        x.style.left = "-400px";
        y.style.left = "50px";
        z.style.left = "110px";
    }
    function login(){
         x.style.left = "50px";
         y.style.left = "450px";
         z.style.left = "0px";
    } 
</script>

 <section class="footer" >
<div class="credit" >
        created by Pentagon Space | @all rights reserved
      </div>
    </section>
</body>
</html>