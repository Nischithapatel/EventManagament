<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Model.Dproduct"%>
<%@page import="Model.Registration"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Book an Event</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" >
        <script type = "text/javascript" src = "https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.1/jquery.validate.min.js"></script>
    </head>
    <style>
     body{
    
    background-color : #eff;
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
        td input{
            display:block;
        }
        .jumbotron{
            background-color: #eff;
        }
        .errmsg{
            background: green;
            padding: 10px;
            width: 50%;
            color: white;
            font-weight: bold;
        }
        .error{   
            color:red;
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
    <script>



        //            jQuery.validator.addMethod( name, method [, message ] )
//            
// value---> "current value of the validated element".
//elememt---> " element to be validated ".

        jQuery.validator.addMethod("checkemail", function (value, element) {
            return /^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/.test(value) || /^[0-9]{10}$/.test(value);
        });
        jQuery(document).ready(function ($) {
            $("#bookevent").validate({
                rules: {
                    name: {
                        required: true
                    },
                    email: {
                        required: true,
                        checkemail: true
                    },
                    pno: {
                        required: true,
                        minlength: 10,
                        maxlength: 10
                    },
                    address: {
                        required: true
                    },
                    edate: {
                        required: true,
                    }
                },
                messages: {
                    name: {
                        required: "Please enter the name."
                    },
                    email: {
                        required: "Please enter the email.",
                        email: "Please enter valid email id"
                    },
                    pno: {
                        required: "Please enter the number.",
                        minlength: "Please enter the  10 digit number .",
                        maxlength: "more than 10 digits."
                    },
                    address: {
                        required: "Please enter the address.",
                    },
                    edate: {
                        required: "Please select the date.",
                    }
                }
            });
        });
    </script>
    <body>
    </head>
    <body>
    <header class="header" >
      <a href="#" class="logo">Kanasu</a>

      <nav class="navbar"  >
        <a href= "index.jsp" >home</a>
        
        <%if (session.getAttribute("uname") == null) {%>
        <a href="login & register.jsp" >Login</a>
        <%}else if(session.getAttribute("uname") != null){%>
        <a href="#"> <i class="fas fa-user-circle" style="padding-right:6px"></i><%=session.getAttribute("uname")%></a>
        <a href="register?logout=yes">Logout</a>
        <%} %>
      </nav>
      <div id="menu-bars" class="fas fa-bars"></div>
    </header><br></br><br></br>
    <center>
        <% if (request.getAttribute("status") != null) {%>
        <h1 class="errmsg"> <%= request.getAttribute("status")%></h1>
        <%}%>
        <br>
        <% if (session.getAttribute("uname") != null) {
                Registration reg = new Registration(session);
                Dproduct s = reg.getEventFormInfo(request.getParameter("event_id"));%>
        <font color="blue" size="5">
        <h2> Book an Event</h2>
        </font>
        <form action='register' method='POST' id="bookevent">
            <div class="container ">
                <div class="jumbotron">
                    <div class="form-group col-md-4">
                        <label >Name</label>
                        <input type="text" class="form-control"  name="name" value="<%=session.getAttribute("uname")%>">
                    </div>
                    <div class="form-group col-md-4">
                        <label >Phone Number</label>
                        <input type="number" class="form-control"  name="pno" value="<%=session.getAttribute("phone")%>">
                    </div>
                    <div class="form-group col-md-4">
                        <label >Email</label>
                        <input type="email" class="form-control"  name="email" value="<%=session.getAttribute("email")%>">
                    </div>
                    <div class="form-group col-md-4">
                        <label >Address</label>
                        <input type="text" class="form-control"  name="address" value="">
                    </div>
                    <div class="form-group col-md-4">
                        <label >Event Name</label>
                        <input type="text" class="form-control"  name="ename" value="<%=s.getP_name()%>" readonly>
                    </div>
                    <div class="form-group col-md-4">
                        <label >Event cost</label>
                        <input type="number" class="form-control"  name="ecost" value="<%=s.getP_cost()%>" readonly>
                    </div>
                    <div class="form-group col-md-4">
                        <label >Date of Event</label>
                        <input type="date" class="form-control"  name="edate" value="">
                    </div>
                    <input type="hidden" name="event_id" value="<%=request.getParameter("event_id")%>"> 
                    <button type="submit" class="btn btn-primary" name="bookevent">Book Now</button>
                </div>
            </div>
        </form>
        <%}%> 
  </center>
     <section class="footer" >
<div class="credit" >
        created by Pentagon Space | @all rights reserved
      </div>
    </section>
</body>
</html>