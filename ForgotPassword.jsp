<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<title>forgot password</title>
<style>

body{
    
    background-color : #eff;
    
    
}
.fp {
	width: 380px;
    height: 300px;
    position: relative;
    margin: 12.5% auto;
    background: #fff;
    box-shadow: 0 0 20px 9px #ff61241f;
    padding: 5px;
}

.fc {
	width: 46vh;
	margin-left: -17vh;
	border-radius: 5px;
	height: 6vh;
}
.header {
  position: fixed;
  top: 0;
  left: 0;
  right: 0;
  z-index: 10000;
  background-color: #88bdbc;
  display: flex;
  align-items: center;
  justify-content: space-between;
  padding: 1.0rem 9%;
}

.header .logo {
  font-weight: bolder;
  color: #fff;
  font-size: 1.5rem;
  text-decoration: none;
  text-transform: capitalize;
}

.header .logo span{
	color: #3498db;
	font-weight: bolder;
	font-size: 1.5rem;
	text-decoration: none;
  text-transform: capitalize;
}

.header .navbar a {
  font-size: 1.0rem;
  color: #fff;
  background: #88bdbc;
  margin-left:2rem;
  text-decoration: none;
  text-transform: capitalize;
}

.header .navbar a:hover {
  color: #eee;
}

#menu-bars {
  font-size: 0.5rem;
  color: #fff;
  cursor: pointer;
  display: none;
  text-decoration: none;
  text-transform: capitalize;
  }
  
  .submit-btn{
    width: 50%;
    padding: 10px 30px;
    cursor: pointer;
    display: block;
    margin: auto;
    background: linear-gradient(to right,#ff105f,#ffad06);
    border: 0;
    outline: none;
    border-radius: 30px;
}
   .footer {
  background: #88bdbc;;
}
.footer .credit {
  text-align: center;
  color: #fff;
  padding: 1rem;
  padding-top: 1rem;
  margin-top: 0.5rem;
  font-size: 1rem;
}
</style>
</head>
<body>

 <header class="header" >
      <a href="#" class="logo">Kanasu</a>

      <nav class="navbar"  >
        <a href="#home"  >home</a>
        <a href="#service" >service</a>
        <a href="#about" >about</a>
        <a href="#gallery" >gallery</a>
        <a href="#price" >price</a>
        <a href="#review" >review</a>
        <a href="#contact" >contact</a>
        <a href="login & register.jsp" >Login</a>
      </nav>

      <div id="menu-bars" class="fas fa-bars"></div>
    </header>

	<center>
		<%
		if (request.getAttribute("status") != null) {
		%>
		<div id="msg">
			<%=request.getAttribute("status")%></div>
		<%
		}
		%>
		<div class="hero" >
		<div class="fp">
			<form method="POST" id="forgot" action="event">
				<font color="(#ff105f,#ffad06)" size="4" >
					<div class="p-4" font color="(#ff105f,#ffad06)"></div>
					<h2>Forgot Password</h2>
					<p class="text-muted">Enter your E-mail address</p>
					<div class="p-1"></div>
					<div class="container ">
						<div class="form-group col-md-4">
							<input type="email" class="fc" placeholder="abc@gmail.com"
								name="email">
						</div>
						<button type="submit" class="submit-btn" name="continue">continue</button>
			</form>
		</div>
		</div>
		<section class="footer" >
<div class="credit" >
        created by Pentagon Space | @all rights reserved
      </div>
    </section>
	</center>
	
</body>
</html>
