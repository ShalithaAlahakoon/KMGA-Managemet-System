<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

     <meta charset="utf-8">
     <meta name="viewport" content="width=device-width, initial-scale=1">
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
	 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	 <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
	 <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<title>KMGA</title>
	<style type="text/css">
		.parallelogram {
			width: 250px;
			height: 50px;
			transform: skew(-20deg);
			background: Maroon;
			
		}
		
	</style>
<link rel="stylesheet" href="styles/Common.css">
</head>
<body>

<jsp:include page="/HomePageLayout.jsp"></jsp:include>



	<div id="carouselExampleSlidesOnly" class="carousel slide" data-ride="carousel">
	<ol class="carousel-indicators">
    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
  </ol>
	
  <div align="center" >
  <div class="carousel-inner"  >
    <div class="carousel-item active">
      <img class="d-block w-50 h-50" src="images/image22.jpg" alt="First slide" width="800px" >
    </div>
    <div class="carousel-item">
      <img class="d-block w-50" src="images/image11.jpg" alt="Second slide" width="800px" >
    </div>
    <div class="carousel-item">
      <img class="d-block w-50" src="images/image33.jpg" alt="Third slide" width="800px" >
    </div>
	</div>
	</div>
	</div>
	
	<hr>
	<div style="background-color:GhostWhite;">
	<marquee direction = "right"><div class="parallelogram" ><h1 align="center">NEWS</h1></div></marquee>
	
	
	
	<div class="card-columns" align="center">
	<!--NEWS 1-->
	<div class="card" style="width: 20rem ; height:35rem;">
	  <img class="card-img-top" src="images/nevs1.jpg" alt="Card image cap">
	  <div class="card-body">
	    <h5 class="card-title">First Acrobatic World Cup in a year also last stop before World Championships</h5>
	    <p class="card-text">Results are secondary right now; ahead of their first World Cup event in more than a year, Acrobatic Gymnastics contenders are thrilled just to be competing again.</p>
	    <a href="https://www.gymnastics.sport/site/news/displaynews.php?idNews=3109" class="btn btn-primary" target="_blank">More</a>
	  </div>
	</div>
	<!--NEWS 2-->
	<div class="card" style="width: 20rem; height:35rem;">
	  <img class="card-img-top" src="images/nevs2.jpg" alt="Card image cap">
	  <div class="card-body">
	    <h5 class="card-title">With Olympic tickets up for grabs, European Championships will bring exciting battles</h5>
	    <p class="card-text">With four Olympic tickets up for grabs at the European Championships in Basel (SUI) this week, the event is set to be an exciting one to watch in the lead-up to the Tokyo 2020 Olympic Games.</p>
	    <a href="https://www.gymnastics.sport/site/news/displaynews.php?idNews=3107" class="btn btn-primary" target="_blank">More</a>
	  </div>
	</div>
	<!--NEWS 3-->
	<div class="card" style="width: 20rem; height:35rem;">
	  <img class="card-img-top" src="images/nevs3.jpg" alt="Card image cap">
	  <div class="card-body">
	    <h5 class="card-title">Media registration timeline for 2021 Gymnastics Worlds</h5>
	    <p class="card-text">The International Gymnastics Federation (FIG) is pleased to announce the online registration timeline for media accreditation requests for its 2021 Aerobic and Acrobatic Gymnastics World Championships.</p>
	    <a href="https://www.gymnastics.sport/site/news/displaynews.php?idNews=3105" class="btn btn-primary" target="_blank">More</a>
	  </div>
	</div>
	</div>
	</div>
	
	
	
	 <!-- FOOTER -->
  <footer class="container">
    <p class="float-end"><a href="#">Back to top</a></p>
    <p>&copy; 2021 KMGA, Inc. &middot; <a href="#">Privacy</a> &middot; <a href="#">Terms</a></p>
  </footer>
</body>
</html>