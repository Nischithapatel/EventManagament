<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Event Organisers | Pentagon Space</title>

    <!--swiper css-->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.css"/>

    <!--font awesome-->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css"/>

    <!--css file-->
    <link rel="stylesheet" href="style.css" />
  </head>
  <body>
    <!-- header section starts  -->
    <header class="header" >
      <a href="#" class="logo"><span>k</span>anasu</a>

      <nav class="navbar"  >
        <a href="#home"  >home</a>
        <a href="#service" >service</a>
        <a href="#about" >about</a>
        <a href="#gallery" >gallery</a>
        <a href="#price" >price</a>
        <a href="#review" >review</a>
        <a href="#contact" >contact</a>
    	<%if (session.getAttribute("uname") == null) {%>
        <a href="login & register.jsp" >Login</a>
        <%}else if(session.getAttribute("uname") != null){%>
        <a href="#"> <i class="fas fa-user-circle" style="padding-right:6px"></i><%=session.getAttribute("uname")%></a>
        <a href="register?logout=yes">Logout</a>
        <%} %>
      </nav>

      <div id="menu-bars" class="fas fa-bars"></div>
    </header>

    <!-- home section starts  -->
    
    <section class="home" id="home">
      <div class="content">
        <h3>
          where your ideas take off
          <span> kanasu events </span>
        </h3>
        <!--<a href="#" class="btn">get quote</a>-->
      </div>
	<br><br>
      <div class="container">
        <div class="slide-container">
			 <div class="slide-image">
             <a href="Events.jsp?event_category=party"><img src="images/home1.jpg" alt="" /></a>
             </div>
              <div class="slide-image">
             <a href="Events.jsp?event_category=birthday"><img src="images/home2.jpg" alt="" /></a>
             </div>
             <div class="slide-image">
             <a href="Events.jsp?event_category=wedding"><img src="images/home3.jpeg" alt="" /></a>
             </div>
             <div class="slide-image">
             <a href="Events.jsp?event_category=holi"><img src="images/home4.jpg" alt="" /></a>
             </div>
             <div class="slide-image">
             <a href="Events.jsp?event_category=destination"><img src="images/home5.jpg" alt="" /></a>
             </div>
             <div class="slide-image">
             <a href="Events.jsp?event_category=djnight"><img src="images/home6.jpg" alt="" /></a>
             </div>
             <div class="slide-image">
             <a href="Events.jsp?event_category=party"><img src="images/home1.jpg" alt="" /></a>
             </div>
              <div class="slide-image">
             <a href="Events.jsp?event_category=birthday"><img src="images/home2.jpg" alt="" /></a>
             </div>
             <div class="slide-image">
             <a href="Events.jsp?event_category=wedding"><img src="images/home3.jpeg" alt="" /></a>
             </div>
             <div class="slide-image">
             <a href="Events.jsp?event_category=holi"><img src="images/home4.jpg" alt="" /></a>
             </div>
             <div class="slide-image">
             <a href="Events.jsp?event_category=destination"><img src="images/home5.jpg" alt="" /></a>
             </div>
             <div class="slide-image">
             <a href="Events.jsp?event_category=djnight"><img src="images/home6.jpg" alt="" /></a>
             </div>
         </div>
        </div>
     
    </section>

    <!-- service section starts  -->
    <section class="service" id="service">
	<br><br><br></br></br></br>
      <div class="service-header"> <span><h4> OUR SERVICES</span></h4> </div>
      <div class="container">
          <div class="card">
              <div class="card-inner">
                  <div class="front-face">
                      <img src="images/service1.jpeg" alt="">
                  </div>
                  <div class="back-face">
                      <h2>Invitation Card</h2><br></br>
                      <p>We customize your invitations for your memorable day with lots of love</p>
                  </div>
              </div>
          </div>

          <div class="card">
              <div class="card-inner">
                  <div class="front-face">
                      <img src="images/service2.jpeg" alt="">
                  </div>
                  <div class="back-face">
                      <h2>Venue</h2><br></br>
                      <p>With our years of strong industry experience and relationships. We are their to help you get the Best Rates from 5-star Hotels, Resorts & Heritage Properties across India </p>
                  </div>
              </div>
          </div>
          <div class="card">
              <div class="card-inner">
                  <div class="front-face">
                      <img src="images/service3.jpeg" alt="">
                  </div>
                  <div class="back-face">
                      <h2>Entertainment</h2><br></br>
                      <p>When we propose an artist for your event. We conceptualize the artists to create an entertaining show. </p>
                  </div>
              </div>
          </div>
          <div class="card">
              <div class="card-inner">
                  <div class="front-face">
                      <img src="images/service4.jpeg" alt="">
                  </div>
                  <div class="back-face">
                      <h2>Photos Videos</h2><br></br>
                      <p>Get an elegent,trending and memorable photo shoots with professional photographers to make your events has memories </p>
                  </div>
              </div>
          </div>
      </div>

  </section>

  <!-- service-section-ends -->

    <!-- about section starts  -->
    <section class="about" id="about">
      <h1 class="heading"><span>about us</span></h1>

      <div class="row">
        <div class="image">
          <img src="images/about.jpeg" alt="" />
        </div>

        <div class="content" style="color:black">
         
          <p>
          
            We "listen" to "your idea" of "your dream events" and offer "creative" suggestions and guidance (keeping in mind your finances & budget), as we believe that each wedding is unique, and by giving attention individually to our clients, we can ensure your events is a true reflection of your dreams.
          </p>
          <p>
            Our mission is to ease the process of planning, designing, and executing the event, thereby reducing the stress people go through to bring their ideas to reality. We aim at total customer satisfaction by keeping it light on the pocket.
          </p>
          <a href="#" class="btn">reach us</a>
        </div>
      </div>
    </section>

    <!-- gallery section starts  -->
    <section class="gallery" id="gallery">
      <h1 class="heading"> <span>our gallery</span></h1>

      <div class="box-container">
        <div class="box">
          <img src="images/gallery1.jpg" alt="" />
          <h3 class="title">best events</h3>
          <div class="icons">
            <a href="#" class="fas fa-heart"></a>
            <a href="#" class="fas fa-share"></a>
            <a href="#" class="fas fa-eye"></a>
          </div>
        </div>

        <div class="box">
          <img src="images/gallery2.jpg" alt="" />
          <h3 class="title">best events</h3>
          <div class="icons">
            <a href="#" class="fas fa-heart"></a>
            <a href="#" class="fas fa-share"></a>
            <a href="#" class="fas fa-eye"></a>
          </div>
        </div>

        <div class="box">
          <img src="images/gallery3.jpg" alt="" />
          <h3 class="title">best events</h3>
          <div class="icons">
            <a href="#" class="fas fa-heart"></a>
            <a href="#" class="fas fa-share"></a>
            <a href="#" class="fas fa-eye"></a>
          </div>
        </div>

        <div class="box">
          <img src="images/gallery4.jpg" alt="" />
          <h3 class="title">best events</h3>
          <div class="icons">
            <a href="#" class="fas fa-heart"></a>
            <a href="#" class="fas fa-share"></a>
            <a href="#" class="fas fa-eye"></a>
          </div>
        </div>

        <div class="box">
          <img src="images/gallery5.jpg" alt="" />
          <h3 class="title">best events</h3>
          <div class="icons">
            <a href="#" class="fas fa-heart"></a>
            <a href="#" class="fas fa-share"></a>
            <a href="#" class="fas fa-eye"></a>
          </div>
        </div>

        <div class="box">
          <img src="images/gallery6.jpg" alt="" />
          <h3 class="title">best events</h3>
          <div class="icons">
            <a href="#" class="fas fa-heart"></a>
            <a href="#" class="fas fa-share"></a>
            <a href="#" class="fas fa-eye"></a>
          </div>
        </div>

        <div class="box">
          <img src="images/gallery7.jpg" alt="" />
          <h3 class="title">best events</h3>
          <div class="icons">
            <a href="#" class="fas fa-heart"></a>
            <a href="#" class="fas fa-share"></a>
            <a href="#" class="fas fa-eye"></a>
          </div>
        </div>

        <div class="box">
          <img src="images/gallery8.jpg" alt="" />
          <h3 class="title">best events</h3>
          <div class="icons">
            <a href="#" class="fas fa-heart"></a>
            <a href="#" class="fas fa-share"></a>
            <a href="#" class="fas fa-eye"></a>
          </div>
        </div>

        <!--<div class="box">
          <img src="images/gallery9.jpg" alt="" />
          <h3 class="title">best events</h3>
          <div class="icons">
            <a href="#" class="fas fa-heart"></a>
            <a href="#" class="fas fa-share"></a>
            <a href="#" class="fas fa-eye"></a>
          </div>
        </div>
      </div>-->
    </section>

    <!-- price section starts  -->
    <section class="price" id="price" >
      <h1 class="heading"><span>our pricing</span></h1>

      <div class="box-container" >
        <div class="box" >
          <h3 class="title">basic</h3>
          <h3 class="amount">₹15000.00</h3>
          <ul>
            ` <!--<li><i class="fas fa-check"></i>full services</li>-->
            <li><i class="fas fa-check"></i> decorations</li>
            <!--<li><i class="fas fa-check"></i> music and photos</li>-->
            <li><i class="fas fa-check"></i> food and drinks</li>
            <li><i class="fas fa-check"></i> invitation card</li>
          </ul>
          <a href="#" class="btn">check out</a>
        </div>

        <div class="box" >
          <h3 class="title" >prime</h3>
          <h3 class="amount" >₹20000.00</h3>
          <ul>
            <!--<li><i class="fas fa-check"></i>full services</li>-->
            <li><i class="fas fa-check"></i> decorations</li>
            <li><i class="fas fa-check"></i> music and photos</li>
            <li><i class="fas fa-check"></i> food and drinks</li>
            <li><i class="fas fa-check"></i> invitation card</li>
          </ul>
          <a href="#" class="btn">check out</a>
        </div>

        <div class="box">
          <h3 class="title">luxury</h3>
          <h3 class="amount">₹30000.00</h3>
          <ul>
            <li><i class="fas fa-check"></i>full services</li>
            <li><i class="fas fa-check"></i> decorations</li>
            <li><i class="fas fa-check"></i> music and photos</li>
            <li><i class="fas fa-check"></i> food and drinks</li>
            <li><i class="fas fa-check"></i> invitation card</li>
          </ul>
          <a href="#" class="btn">check out</a>
        </div>

        <!--<div class="box">
          <h3 class="title">ultra</h3>
          <h3 class="amount">$920.00</h3>
          <ul>
            <li><i class="fas fa-check"></i>full services</li>
            <li><i class="fas fa-check"></i> decorations</li>
            <li><i class="fas fa-check"></i> music and photos</li>
            <li><i class="fas fa-check"></i> food and drinks</li>
            <li><i class="fas fa-check"></i> invitation card</li>
          </ul>
          <a href="#" class="btn">check out</a>
        </div>
      </div>-->
    </section>

    <!-- review section starts  -->
    <section class="reivew" id="review">
      <h1 class="heading"><span>client's review</span></h1>
      <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.css"/>
      <script src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.js"></script>
      <div class="review-slider">
        <div class="swiper-wrapper">
          <div class="swiper-slide box">
            <i class="fas fa-quote-right"></i>
            <div class="user">
              <img src="images/img1.jpg" alt="" />
              <div class="user-info">
                <h3>nayana</h3>
                <span>happy customer</span>
              </div>
            </div>
            <div class="stars">
              <i class = "fa fa-star"></i>
              <i class = "fa fa-star"></i>
              <i class = "fa fa-star"></i>
              <i class = "fa fa-star"></i>
              <i class = "fa fa-star-half"></i>
            </div>
            <p>
              Kanasu Event Planners are one of the best for Wedding planning. Everything was organised by them on time professionals in work.
All staff with us as family members Thanks Guys you are the Best
            </p>
          </div>

          <div class="swiper-slide box">
            <i class="fas fa-quote-right"></i>
            <div class="user">
              <img src="images/img2.jpg" alt="" />
              <div class="user-info">
                <h3>lisa</h3>
                <span>happy customer</span>
              </div>
            </div>
            <div class="stars">
              <i class = "fa fa-star"></i>
              <i class = "fa fa-star"></i>
              <i class = "fa fa-star"></i>
              <i class = "fa fa-star"></i>
              <i class = "fa fa-star-half"></i>
            </div>
            <p>
              Birthday Party was organised in party hall of my niece this Sunday. 
              Just Memorable event. All organised on time and was in Budget .
              All in all very happy with the final decoration
              Thanks for the best Birthday event                                                                                                                                                                                                                                                               
            </p>
          </div>

          <div class="swiper-slide box">
            <i class="fas fa-quote-right"></i>
            <div class="user">
              <img src="images/img3.jpg" alt="" />
              <div class="user-info">
                <h3>mary</h3>
                <span>happy customer</span>
              </div>
            </div>
            <div class="stars">
              <i class = "fa fa-star"></i>
              <i class = "fa fa-star"></i>
              <i class = "fa fa-star"></i>
              <i class = "fa fa-star"></i>
              <i class = "fa fa-star-half"></i>
            </div>
            <p>             Amazing creativity.The decoration they make definitely fills the heart of any person. Good team work and adorable event management. Affordable and best event makers.Keep going 👍All the best.
           </p></div>
          

          <div class="swiper-slide box">
            <i class="fas fa-quote-right"></i>
            <div class="user">
              <img src="images/img4.jpg" alt="" />
              <div class="user-info">
                <h3>rose</h3>
                <span>happy customer</span>
              </div>
            </div>
            <div class="stars">
              <i class = "fa fa-star"></i>
              <i class = "fa fa-star"></i>
              <i class = "fa fa-star"></i>
              <i class = "fa fa-star"></i>
              <i class = "fa fa-star-half"></i>
            </div>
            <p>
              Had a smooth and hassle free decor for birthday event done by kanasu events. They provided reasonable rates and were on time for the decorations. There's a wide variety of designs to choose from.  </p>
          </div>

          <div class="swiper-slide box">
            <i class="fas fa-quote-right"></i>
            <div class="user">
              <img src="images/img4.jpg" alt="" />
              <div class="user-info">
                <h3>rose</h3>
                <span>happy customer</span>
              </div>
            </div>
            <div class="stars">
              <i class = "fa fa-star"></i>
              <i class = "fa fa-star"></i>
              <i class = "fa fa-star"></i>
              <i class = "fa fa-star"></i>
              <i class = "fa fa-star-half"></i>
            </div>
            <p>
             Am really satisfied with the flower decorations  done by Kanasu Events for our House Warming Ceremony.
Team is very professional and the decoration done by them was looking too good.

            </p>
          </div> 
  
      <div class="swiper-slide box">
        <i class="fas fa-quote-right"></i>
        <div class="user">
          <img src="images/img4.jpg" alt="" />
          <div class="user-info">
            <h3>rose</h3>
            <span>happy customer</span>
          </div>
        </div>
        <div class="stars">
          <i class = "fa fa-star"></i>
          <i class = "fa fa-star"></i>
          <i class = "fa fa-star"></i>
          <i class = "fa fa-star"></i>
          <i class = "fa fa-star-half"></i>
        </div>
        <p>
          Got in touch with them for my haldi and mehendi event. They did a great job. Manoj and his team are professional didn't rush anything. Affordable and friendly. Did a great job with decoration and arrangements.
        </p>
        </div>
      </div>
    </div>
    </section>

    <!-- contact section starts  -->
    <section class="contact" id="contact">
      <h1 class="heading"><span>contact us</span> </h1>

      <form action="">
        <div class="inputBox">
          <input type="text" placeholder="name" required/>
          <input type="email" placeholder="email" required/>
        </div>
        <div class="inputBox">
          <input type="tel" placeholder="number" required />
          <input type="text" placeholder="subject" required/>
        </div>
        <textarea
          name=""
          placeholder="message"
          id=""
          cols="30"
          rows="10"
        ></textarea>
        <input type="submit" value="send message" class="btn" />
      </form>
    </section>

    <!-- footer section starts  -->
    <section class="footer" style="background-color=#222">
      <div class="box-container">
        <div class="box">
          <h3>branches</h3>
          <a href="#"> <i class="fas fa-map-marker-alt"></i> Bangalore </a>
          <a href="#"> <i class="fas fa-map-marker-alt"></i>Shimogga</a>
          <a href="#"> <i class="fas fa-map-marker-alt"></i> Davangere </a>
          <a href="#"> <i class="fas fa-map-marker-alt"></i> Mysore </a>
          <a href="#"> <i class="fas fa-map-marker-alt"></i> Sakleshpura </a>
        </div>

        <div class="box">
          <h3>quick links</h3>
          <a href="#"> <i class="fas fa-arrow-right"></i> Home </a>
          <a href="#"> <i class="fas fa-arrow-right"></i> Service </a>
          <a href="#"> <i class="fas fa-arrow-right"></i> About </a>
          <a href="#"> <i class="fas fa-arrow-right"></i> Gallery </a>
          <a href="#"> <i class="fas fa-arrow-right"></i> Price </a>
          <a href="#"> <i class="fas fa-arrow-right"></i> Reivew </a>
          <a href="#"> <i class="fas fa-arrow-right"></i> Contact </a>
        </div>

        <div class="box">
          <h3>contact info</h3>
          <a href="#"> <i class="fas fa-phone"></i> +91 984-511-9739 </a>
          <a href="#"> <i class="fas fa-phone"></i> +91 8277-315-488</a>
          <a href="#"> <i class="fas fa-envelope"></i> divya@gmail.com </a>
          <a href="#"> <i class="fas fa-envelope"></i> pentagonspace@gmail.com </a>
          <a href="#">
            <i class="fas fa-map-marker-alt"></i> Bengaluru, India - 560054
          </a>
        </div>

        <div class="box">
          <h3>follow us</h3>
          <a href="#"> <i class="fab fa-facebook-f"></i> facebook </a>
          <a href="#"> <i class="fab fa-twitter"></i> twitter </a>
          <a href="#"> <i class="fab fa-instagram"></i> instagram </a>
          <a href="#"> <i class="fab fa-linkedin-in"></i> linkedin </a>
        </div>
      </div>
      <div class="credit" >
        created by <span>Pentagon Space</span> | @all rights reserved
      </div>
    </section>

   <!-- theme toggler  -->
    <div class="theme-toggler">
      <div class="toggle-btn">
        <i class="fas fa-cog"></i>
      </div>

      <h3>choose color</h3>

      <div class="buttons">
        <div class="theme-btn" style="background: #ccff33"></div>
        <div class="theme-btn" style="background: #d35400"></div>
        <div class="theme-btn" style="background: #f39c12"></div>
        <div class="theme-btn" style="background: #1abc9c"></div>
        <div class="theme-btn" style="background: #3498db"></div>
        <div class="theme-btn" style="background: #9b59b6"></div>
      </div>
    </div>

    <!-- Swiper JS -->
    <script src="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.js"></script>

    <!--JS file-->
    <script src="app.js"></script>
  </body>
</html>