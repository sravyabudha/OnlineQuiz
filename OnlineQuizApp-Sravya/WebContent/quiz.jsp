<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">


<title>OnlineQuiz</title>
	<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>
	#nav table tr td
	{
		padding: 70px;
		padding-top: 5px;
		padding-right: 85px;
		padding-bottom: 10px;
	}
	#nav{
		position: fixed;
		z-index: +1;
		background-color: #33ccff;
		width: 100%;
	}
	a{
			text-decoration: none;
	}
	body
	{
		background-color: white;
		padding-left: 0px;
	}
	
	#oq{
		height: 220px;
		width: 400px;
		position: absolute;
		float: left;
	}
	h1{
		 text-shadow: 2px 2px #ffffff;
		 text-align: center;
		 color: #660066;
		
	}
	#a{
		background-color: #33ccff;
		text-align: center;
		height: 30px;
		padding-top: 3px;
	}
	
	img{
		height: 250px;
		width: 500px;
		padding-top: 32px;
		padding-left: 10px;
	}
	h3{
		text-shadow: 2px 2px #ffffff;
		color: #660066;
	}
	
p li{
	color:#440066;
}
#anc{
	position:absolute;
	top:50px;
	right:200px;
}
</style></head>
<body>
	<div>
	<img src="qu.jpg" id="oq">
</div>
	<div id="nav">
	<table><tr><td><a href="onlinequiz.html">Home</a></td>
		  <td><a href="Products.html">Products</a></td>
		  <td><a href="Clients.html">Clients</a>	</td>
		   <td><a href="About.html">About us</a></td>
		   <td><a href="More.html">More info</a></td>
		   <td><a href="Contact.html">Contact us</a></td></tr></table>
	</div><br><br><br><br><br><br><br><br><br><br><br>
	<form action="test" method="post">
	<div id="anc"><input type="submit" value="TakeTest"></div></form>
	<h1>Welcome to Online Quiz.</h1><br>
	
	<p align="center">Begin your revision for competitive exams. Choose your favorite topic, and start playing online quizzes to check your preparation level for SSC, IAS, IBPS, RRB and many more entrance exams</p>
	<div class="container">
           <header>
           				<div class="row">
							<div class="col-xs-1"></div>
           					<div class="col-xs-5">
                   			          <img src="reasoning.png"><br>
                                              <p align="center">improve your reasoning skills by <b>reasoning quiz</b>.</p>
                    		</div>
                    		<div class="col-xs-5">			
                                      <img src="English.jpg"  ><br>
                                              <p align="center">improve your english by <b>english quiz</b>.</p></div>
                        </div>

                        <div class="row">
                        <div class="col-xs-1"></div>
                        	<div class="col-xs-5">
                                      <img src="aptitude.jpg"><br>
                            				<p align="center">improve your aptitude skills by <b>aptitude quiz</b>.</p>
                            </div>
                            <div class="col-xs-5">
                                       <img src="computer.png"><br>
                           					<p align="center">improve your computer skills by <b>computer quiz</b>.</p>
                           	</div>
                        </div>
                        
                        <div class="row">
                        <div class="col-xs-1"></div>
                        	<div class="col-xs-5">
                           				<img src="gk.gif"><br>
                           					<p align="center">improve your GeneralKnowledge skills by <b>GeneralKnowledge quiz</b>.</p>
                           	</div>
                           	<div class="col-xs-5">
                           				<img src="science.png"><br>
                           					<p align="center">improve your science skills by <b>science quiz</b>.</p>
                           	</div>
                        </div>   					
           </header>
	</div>
	<div>
			<h3 > Products</h3>
			
			<ul>
				<li>a unique gaming and quizzing experience by integrating several gamification elements, social features and learning principles</li>
				<li>a very neat quiz engine</li>
				<li>great usability</li>
				<li>styling & branding options</li>
			</ul>
		</div>
		<div id="a">
	<footer>Copyright &copy OnlineQuiz.com</footer>
	</div>


</body>
</html>