<header>
	<a href="/"><img id="header_logo" src="/images/web-logo-white.svg" /></a>

	<div id="menu_btn">
		<div></div>
	</div>

	<% String pageType = request.getParameter("pageType"); %>

	<div id="header_options">

		<div id="menu">
			
			<% if(!"categories".equals(pageType)) { %>
				<a href="/categories" class="menu-item">Stories by Category</a>
			<% } %>
			<% if(!"popular".equals(pageType)) { %> 
				<a href="/popular" class="menu-item">Popular Stories</a> 
			<% } %>
			<a href="/sotw" class="menu-item">Story of the Week</a>
		</div>

		<div id="social">
			<a target="_blank" href="https://facebook.com/krea.fun"><i
				class="fab fa-facebook" aria-hidden="true"></i></a> <a target="_blank"
				href="https://instagram.com/krea.fun"><i
				class="fab fa-instagram" aria-hidden="true"></i></a> <a target="_blank"
				href="https://twitter.com/krea.fun"><i class="fab fa-twitter"
				aria-hidden="true"></i></a>
		</div>

	</div>

</header>