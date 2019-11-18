<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/css/semantic.min.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/css/custom.css">
<script src="https://code.jquery.com/jquery-3.1.1.min.js"
	integrity="sha256-hVVnYaiADRTO2PzUGmuLJr8BLUSjGIZsDYGmIJLv2b8="
	crossorigin="anonymous"></script>
<script src="<%=request.getContextPath()%>/js/semantic.min.js"></script>
<title>welcome ${UserName}</title>
</head>
<body>
	<div class="ui two welcome column centered grid">
		<div class="ui two column grid centered ">
			<div class="welcome column"></div>
			<div class="centered row">
				<div class="welcome column">
					<h2 class="ui orange image header">
						<span class="content">Welcome</span>
					</h2>

					<div class="ui cards">
						<div class="ui card">
							<div class="content">
								<div class="header">${UserName }</div>
							</div>
							<div class="content">
								<div class="meta">Friends of Spring</div>
								<div class="description">Welcome to spring</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>