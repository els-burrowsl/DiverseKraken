<!doctype html>
<%@page import="com.elsevier.models.Book"%>
<html class="no-js" lang="en">
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Book details | Welcome</title>
<link rel="stylesheet" href="css/style.css">





</head>
<body>
	  <!-- Just an image -->

<div class="header">
  <a href="#default" >
  <img  class="img" src="/images/DiverseBooks.jpg" alt="DiverseBooks" width=400/>
  </a>
  </div>
    <!-- Start Top Bar -->
    <div class="navbar">
      <div class="navbar-left">
        <ul class="menu">
          <li><a href="/" >Home</a></li>
          <li><a href="/BLAHAA">Bestsellers</a></li>
          <li><a href="/newBooksIn">New In</a></li>
          <li><a href="/allBookDetails">All Books</a></li>
      </ul>
   
    
          
      </div>
      
      <div class="navbar-right">
        
             <ul class="dropdown menu" data-dropdown-menu>
            
            <li class="has-submenu">
              <a href="/viewCart"><img src="images/cart.jpg" width="30" height="30"/></a>
              <ul class="submenu menu vertical" data-submenu>
                <li><a href="/viewCart"><img src="images/cart.jpg" width="50" height="50"/></a></li>
                <li><a href="/login"> Register | Login</a></li>
              </ul>
            </li>
            <li><a href="html/about.html">About Us</a></li>
            <li><a href="html/contactus.html">Contact</a></li>
          </ul>
          
      </div>
    </div>
    <!-- End Top Bar -->

	<%!
    
      Book book;
    
    
    
    
    %>


	<%
    
    book = (Book) request.getAttribute("book");
    
 
    %>


	<br>
	<!-- You can now combine a row and column if you just need a 12 column row -->
	<div class="row columns">
		<nav aria-label="You are here:" role="navigation">
			<ul class="breadcrumbs">

				<li><a href="/">Home</a></li>
				<li><span class="show-for-sr">Current: </span> Book Details</li>
			</ul>
		</nav>
	</div>

	<div class="row">
		<div class="medium-6 columns">
			<img class="thumbnail" src="<%=book.getBookImage()%>" />
			<div class="row small-up-4">
				<div class="column">
					ISBN:
					<%=book.getPaperISBN()%>
				</div>
				<div class="column">
					Price: �<%=book.getPrice()%>
				</div>
				<div class="column">
					Published On:
					<%=book.getPublishedDate()%>
				</div>

			</div>
		</div>
		<div class="medium-6 large-5 columns">
			<h3><%=book.getTitle() %></h3>
			<p><%=book.getDescription() %></p>

			<label>Select Quantity <select>
					<option value="">-- Select --</option>
					<option value="1">1</option>
					<option value="2">2</option>
					<option value="3">3</option>
					<option value="4">4</option>
					<option value="5">5</option>
					<option value="6">6</option>
					<option value="7">7</option>
					<option value="8">8</option>
					<option value="9">9</option>
					<option value="10">10</option>
					<option value="11">11</option>



			</select>
			</label> <a href="/addToCart?bookId=<%=book.getBookId()%>"
				class="button large expanded">Add to Cart</a>

			<div class="small secondary expanded button-group">
				<a class="button">Facebook</a> <a class="button">Twitter</a> <a
					class="button">Yo</a>
			</div>
		</div>
	</div>
	
	<div class="column row">
		<hr>
		<ul class="tabs" data-tabs id="example-tabs">
			<li class="tabs-title is-active"><a href="#panel1"
				aria-selected="true">Reviews</a></li>
			<li class="tabs-title"><a href="#panel2">Similar Products</a></li>
		</ul>
		<div class="tabs-content" data-tabs-content="example-tabs">
			<div class="tabs-panel is-active" id="panel1">
				<h4>Reviews</h4>
				<div class="media-object stack-for-small">
					<div class="media-object-section">
						<img class="thumbnail" src="http://placehold.it/200x200">
					</div>
					<div class="media-object-section">
						<h5>Mike Stevenson</h5>
						<p>RENDER REVIEWS HERE</p>
					</div>
				</div>
				<div class="media-object stack-for-small">
					<div class="media-object-section">
						<img class="thumbnail" src="http://placehold.it/200x200">
					</div>
					<div class="media-object-section">
						<h5>Mike Stevenson</h5>
						<p>I'm going to improvise. Listen, there's something you
							should know about me... about inception. An idea is like a virus,
							resilient, highly contagious. The smallest seed of an idea can
							grow. It can grow to define or destroy you</p>
					</div>
				</div>
				<div class="media-object stack-for-small">
					<div class="media-object-section">
						<img class="thumbnail" src="http://placehold.it/200x200">
					</div>
					<div class="media-object-section">
						<h5>Mike Stevenson</h5>
						<p>I'm going to improvise. Listen, there's something you
							should know about me... about inception. An idea is like a virus,
							resilient, highly contagious. The smallest seed of an idea can
							grow. It can grow to define or destroy you</p>
					</div>
				</div>
				<label> My Review <textarea placeholder="None"></textarea>
				</label>
				<button class="button">Submit Review</button>
			</div>
			<div class="tabs-panel" id="panel2">
				<div class="row medium-up-3 large-up-5">
					<div class="column">
						<img class="thumbnail" src="http://placehold.it/350x200">
						<h5>
							Other Product <small>$22</small>
						</h5>
						<p>In condimentum facilisis porta. Sed nec diam eu diam mattis
							viverra. Nulla fringilla, orci ac euismod semper, magna diam.</p>
						<a href="#" class="button hollow tiny expanded">Buy Now</a>
					</div>
					<div class="column">
						<img class="thumbnail" src="http://placehold.it/350x200">
						<h5>
							Other Product <small>$22</small>
						</h5>
						<p>In condimentum facilisis porta. Sed nec diam eu diam mattis
							viverra. Nulla fringilla, orci ac euismod semper, magna diam.</p>
						<a href="#" class="button hollow tiny expanded">Buy Now</a>
					</div>
					<div class="column">
						<img class="thumbnail" src="http://placehold.it/350x200">
						<h5>
							Other Product <small>$22</small>
						</h5>
						<p>In condimentum facilisis porta. Sed nec diam eu diam mattis
							viverra. Nulla fringilla, orci ac euismod semper, magna diam.</p>
						<a href="#" class="button hollow tiny expanded">Buy Now</a>
					</div>
					<div class="column">
						<img class="thumbnail" src="http://placehold.it/350x200">
						<h5>
							Other Product <small>$22</small>
						</h5>
						<p>In condimentum facilisis porta. Sed nec diam eu diam mattis
							viverra. Nulla fringilla, orci ac euismod semper, magna diam.</p>
						<a href="#" class="button hollow tiny expanded">Buy Now</a>
					</div>
					<div class="column">
						<img class="thumbnail" src="http://placehold.it/350x200">
						<h5>
							Other Product <small>$22</small>
						</h5>
						<p>In condimentum facilisis porta. Sed nec diam eu diam mattis
							viverra. Nulla fringilla, orci ac euismod semper, magna diam.</p>
						<a href="#" class="button hollow tiny expanded">Buy Now</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="row column">
		<hr>
		<ul class="menu">
			<li>Online Shopping</li>
			<li><a href="/">Home</a></li>
			<li><a href="#">About</a></li>
			<li><a href="#">Contact</a></li>
			<li class="float-right">Copyright 2017</li>
		</ul>
	</div>

	<!-- Footer -->
	<div class="footer">

		<h3>
			<img src="images/DiverseBooks.jpg" width="100" height="100" />
			Diverse Books
		</h3>
		<p>This website is proudly brought to you by Team Diversity.
			&copy; 2018 Team Diversity</p>
	</div>

	<script src="https://code.jquery.com/jquery-2.1.4.min.js"></script>
	<script src="js/elsevier.js"></script>
	<script>
		$(document).foundation();
	</script>
</body>
</html>



