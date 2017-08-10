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
		/*#para
		{
			border: 1px solid;
			
		}*/
				#content
		{
			padding-left: 10px;
			padding-right: 10px;
		}
		#footer
		{
			text-align: center;
			background: linear-gradient(to bottom, beige,pink);
			padding-top: 10px;
			height:50px;
			width:100%;
		}
		</style>
	</head>
	<body>
		<div id="quiz"><h2 align="center">Online Quiz</h2></div>
		<div class="Container">
			<div class="navbar navbar-default">
				<ul class="nav navbar-nav" id="a">
					<li class="active"><button type="button" class="btn btn-info btn-lg"><a href="Home/jsp"><span class="glyphicon glyphicon-home"></span></a></li>
					<li><a href="products.jsp">Products</a></li>
					<li><a href="">Blog</a></li>
					<li><a href="">Support</a></li>
					<li><a href="contactpage.jsp">Contact Us</a></li>
					<li><a href="">About</a></li>
				</ul>
			</div>
		</div>
		<div id="content">
		<div id="para">
				<p><b>Online Quiz Portal</b> is a General Knowledge Sharing and Enhance your GK Portal. You can Check your knowledge by playing the Quiz into Various category.<br><br>

				You can Play Quiz Online on Online Quiz Portal into several categories. You can Also Play Quiz By Level wise means You can Play Quiz According to your General Knowledge Level by Playing Quiz on "Check Your GK Level" Module. You can Also Enhance your Knowledge by Reading the "Enhance Your GK" Module.<br><br>

				Play Quiz on Cricket, Science , General Knowledge , sports, PHP, Mysql, Javascript and enhance your knowledge and know some facts
				</p>
		</div>
		</div>

		<div class="container" id="two">
		  <br>
 			 <div id="myCarousel" class="carousel slide" data-ride="carousel" style="width=100% height=500px auto">
    			<!-- Indicators -->
   				 <ol class="carousel-indicators">
     			 <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
     			 <li data-target="#myCarousel" data-slide-to="1"></li>
     			 <li data-target="#myCarousel" data-slide-to="2"></li>
     			 <li data-target="#myCarousel" data-slide-to="3"></li>
    			</ol>

   				 <!-- Wrapper for slides -->
   				 <div class="carousel-inner" role="listbox" >

    				  <div class="item active">
     				   <img src="images/3.png" alt="Online Puzzles" style="width=100% height=500px">
        					<div class="carousel-caption">
       					 		  <h3>Quiz</h3>       					 		
      						  </div>	
      					</div>

     					 <div class="item">
      					  <img src="images/6.jpg" alt="Online Assessment Tool" style="width=100% height=500px">
       						 <div class="carousel-caption">
          						<h3>English Quiz</h3>
       						 </div>
     					 </div>
    
     					 <div class="item">
       						 <img src="images/7.jpg" alt="Exam Tool" style="width=100% height=500px">
       						 <div class="carousel-caption">
       						   <h3>Cricket Quiz</h3>
       						 </div>
     					 </div>

     					 <div class="item">
       						 <img src="images/8.jpg" alt="Exam Tool" style="width=100% height=500px">
       						 <div class="carousel-caption">
       						   <h3>General Knowledge Quiz</h3>
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
  		</div><br>

		<div id="content">
			<div id="para">
				<p><b>About OnlineQuiz.com</b><br><br>
			OnlineQuiz.com endeavours in making maximum saving and fun for its users. Simply buy coupons to save money and earn discounts. Not only that, with every purchase earn bonus points to enter various contests. To enter contest, choose anyone of them from the above featured options and join the GK based competition to win attractive prizes. It is an ultimate platform to test your knowledge and win the amazing rewards like a latest mobile phone, a stunning new laptop, a hi-tech digital camera, a free mobile recharge, a 24 carat gold coin and much more. 

			We love to reward you for your awareness and thus all our questions relate to the usual topics. If you can choose the correct answers of our simple, multiple-choice queries, you can win unlimited. Moreover, we allow you to submit multiple entries for the same contest, so your chances of winning are automatically enhanced. We have recently announced winners from different parts of India. Click the WINNERS tag on the right side to view the list of the lucky winners and register with us to be one of them. It is a completely genuine portal that offers highly-rewarding quizzes for the Indian web-users.
			</p>
			</div>
		</div>

		<div id="footer">
			<h6><b>Online Quiz portal</b><br> Copyright @ onlinequiz.com 2017</h6><br>

		</div>
	</body>
</html>