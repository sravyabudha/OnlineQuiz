<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">


		<title>Online Quiz</title>
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <style>
    #a
    {
      background: linear-gradient(to bottom,beige,pink);
      padding:5px;
      width:100%;
    }
    #quiz
    {
      text-align: center;
      background: linear-gradient(to bottom, beige,grey);
      padding-top: 10px;
      height:80px;
    }
    </style>
	</head>
	<body>
		<div id="quiz"><h2 aling="center">Online Quiz</h2><div>
		<div class="Container">
			<div class="navbar navbar-default">
				<ul class="nav navbar-nav" id="a">
					<li ><button type="button" class="btn btn-info btn-lg"><a href="file:///D:/Sravya/welcomepage.html"><span class="glyphicon glyphicon-home"></span></a></li>
					<li class="active"><a href="file:///D:/Sravya/Products.html">Products</a></li>
					<li><a href="">Blog</a></li>
					<li><a href="">Support</a></li>
					<li><a href="file:///D:/Sravya/contactUs.html">Contact Us</a></li>
					<li><a href="">About</a></li>
				</ul>
			</div>
		</div>

		<div>
			<h4 align="center">Our Products</h4>
		<div class="container" id="two">
		  <br>
 			 <div id="myCarousel" class="carousel slide" data-ride="carousel" style=" auto">
    			<!-- Indicators -->
   				 <ol class="carousel-indicators">
     			 <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
     			 <li data-target="#myCarousel" data-slide-to="1"></li>
     			 <li data-target="#myCarousel" data-slide-to="2"></li>
    			</ol>

   				 <!-- Wrapper for slides -->
   				 <div class="carousel-inner" role="listbox" >

    				  <div class="item active">
     				   <img src="0.jpg" alt="Online Puzzles" width=100% height=100%>
        					<div class="carousel-caption">
       					 		  <h3>Online Puzzles</h3>
       					 		  <p></p>
      						  </div>	
      					</div>

     					 <div class="item">
      					  <img src="1.jpg" alt="Online Assessment Tool" width=100% height=100%>
       						 <div class="carousel-caption">
          						<h3>Online Assessment Tool</h3>
       						 </div>
     					 </div>
    
     					 <div class="item">
       						 <img src="2.png" alt="Exam Tool" width=100% height=100%>
       						 <div class="carousel-caption">
       						   <h3>Exam Tool</h3>
       						 </div>
     					 </div>
  				</div>

    			<!-- Left and right controls -->
    			<a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev" width="100px">
     			 <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
     			 <span class="sr-only">Previous</span>
   			 	</a>
   				 <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next" width="100px">
     			 <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
     			 <span class="sr-only">Next</span>
    			</a>
  			</div>
  		</div>
		</div>
	</body>
</html>